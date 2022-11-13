//////////////////////////////////////////////////BLOC///////////////////////////////////////////
import 'dart:async';
import 'package:arstate/arstate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../locator.dart';
import '../../../models/authentication/login_model.dart';
import '../../../repository/login_repository.dart';
part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const _Initial()) {
    on<AuthEvent>(_onAuthEvent);
  }

  Future<void> _onAuthEvent(AuthEvent event, Emitter<AuthState> emit) async {
    final auth = locator<Auth>();
    await event.when(
      appLoaded: () async {
        String? tokenFromInternal = await readAccessToken();
        if (tokenFromInternal != null) {
          print('AppLoaded.. token: $tokenFromInternal');
          auth._token = tokenFromInternal;
        }
      },
      register: (RegisterRequest registerRequest) {},
      login: (LoginRequest loginRequest) async {
        emit(_getLoadingState());
        final ApiResult<AuthModel> apiResult =
            await AuthRepository().loginWithEmailAndPassword(loginRequest);

        apiResult.when(
          success: (AuthModel authModel) async {
            //==============================
            //=========read token
            auth._token = parsingAcessToken(authModel.accessToken);

            //==============================
            //=========save and emit auth state
            saveAccessToken(auth._token!);
            print('>LOGIN SUCCESS ${auth._token}');
            //=========save and emit auth state
            //==============================

            auth._token != null
                ? emit(_getLoginIsAuth(true))
                : emit(_getLoginIsAuth(false));
          },
          failure: (NetworkExceptions error) async {
            print('>LOGIN FAIL');
            emit(_getErrorState(error));
          },
        );
      },
    );
  }

  AuthState _getErrorState(NetworkExceptions networkExceptions) {
    return AuthState.isError(networkExceptions);
  }

  AuthState _getLoadingState() {
    return const AuthState.isLoading();
  }

  AuthState _getLoginIsAuth(bool isAuth) {
    return AuthState.isAuth(isAuth);
  }

  String? parsingAcessToken(String s) {
    try {
      return s.substring(5);
    } catch (e) {
      return null;
    }
  }

  String? parsingUserId(String s) {
    try {
      return s.substring(0, 4);
    } catch (e) {
      return null;
    }
  }

  Future<void> signOut() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      prefs.remove('token');
      print('SIGN OUT');
    } catch (error) {
      throw (error);
    }
  }

  Future<void> saveAccessToken(String token) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('token', token);
    } catch (error) {
      print(error);
    }
  }

  Future<String?> readAccessToken() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');
      if (token != null) {
        return token;
      } else {
        return null;
      }
    } catch (error) {
      print(error);
    }
    return null;
  }
}

class Auth {
  String? _token;
  String? _userId;

  bool get isAuth {
    return _token != null;
  }

  String? get token {
    return _token;
  }

  String? get userId {
    return _userId;
  }
}

import 'package:arstate/arstate.dart';
import 'package:movie_app/repository/http.dart';

import '../models/authentication/login_model.dart';

class AuthRepository {
  late XHttp http;

  AuthRepository() {
    http = XHttp(xBaseUrl: 'https://auth-api.rumahpeluang.com/api');
  }

  Future<ApiResult<AuthModel>> register(RegisterRequest registerRequest) async {
    return await http.post(
      '/register',
      data: registerRequest.toJson(),
      onSuccess: (response) {
        return AuthModel.fromJson(response.data);
      },
    );
  }

  Future<ApiResult<AuthModel>> loginWithEmailAndPassword(
    LoginRequest loginRequest,
  ) async {
    return await http.post(
      '/login',
      data: loginRequest.toJson(),
      onSuccess: (response) {
        print(response.data);
        return AuthModel.fromJson(response.data);
      },
    );
  }
}

import 'package:arstate/arstate.dart';
import 'package:movie_app/models/auth_movie/movie_model.dart';
import 'package:movie_app/repository/http.dart';

import '../models/authentication/login_model.dart';

class AuthRepository {
  late XHttp http;

  AuthRepository() {
    http = XHttp(xBaseUrl: 'http://restapi.adequateshop.com/api/authaccount/');
  }

  Future<ApiResult<MovieAuthModel>> register(
      RegisterRequest registerRequest) async {
    return await http.post(
      '/registration',
      data: registerRequest.toJson(),
      onSuccess: (response) {
        return MovieAuthModel.fromJson(response.data);
      },
    );
  }

  Future<ApiResult<MovieAuthModel>> loginWithEmailAndPassword(
    LoginRequest loginRequest,
  ) async {
    return await http.post(
      '/login',
      data: loginRequest.toJson(),
      onSuccess: (response) {
        print(response.data);
        return MovieAuthModel.fromJson(response.data);
      },
    );
  }
}

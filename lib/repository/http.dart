import 'package:arstate/arstate.dart';
import 'package:dio/dio.dart';

import '../logic/bloc/authentication/auth_bloc.dart';

const int _defaultConnectTimeout = Duration.millisecondsPerMinute;
const int _defaultReceiveTimeout = Duration.millisecondsPerMinute;

class XHttp {
  late final String baseUrl;
  late final Map<String, dynamic> dataRequest;

  late Dio _dio;
  late final List<Interceptor>? interceptors;

  XHttp({String? xBaseUrl, Interceptors? this.interceptors}) {
    // get api base url from .env file
    // baseUrl = xBaseUrl ?? 'https://rumahpeluang.com/api';
    baseUrl = xBaseUrl ??
        'https://api.themoviedb.org/3/discover/movie?api_key=f7db9854f528f8981be41750b1279725';
    // set options
    _dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: _defaultConnectTimeout,
      receiveTimeout: _defaultReceiveTimeout,
    ));

    // set request header
    _dio.options.headers['Accept'] = 'application/json';

    if (interceptors?.isNotEmpty ?? false) {
      _dio.interceptors.addAll(interceptors!);
    }
  }

  Future<ApiResult<T>> get<T>(
    String endPoint, {
    bool authorization = false,
    dynamic Function(Response<dynamic>)? onSuccess,
    dynamic queryParameters,
  }) async {
    return sendRequest(
      () => _dio.get(endPoint, queryParameters: queryParameters),
      authorization: authorization,
      onSuccess: onSuccess,
    );
  }

  Future<ApiResult<T>> post<T>(
    String endPoint, {
    dynamic data,
    dynamic Function(Response<dynamic>)? onSuccess,
  }) async {
    return await sendRequest<T>(
      () async => _dio.post(
        endPoint,
        data: data,
      ),
      authorization: true,
      onSuccess: onSuccess,
    );
  }

  Future<ApiResult<T>> patch<T>(
    String endPoint, {
    dynamic data,
    dynamic Function(Response<dynamic>)? onSuccess,
  }) async {
    return await sendRequest<T>(
      () async => _dio.patch(
        endPoint,
        data: data,
      ),
      authorization: true,
      onSuccess: onSuccess,
    );
  }

  Future<ApiResult<T>> put<T>(
    String endPoint, {
    dynamic data,
    dynamic Function(Response<dynamic>)? onSuccess,
  }) async {
    return await sendRequest<T>(
      () async => _dio.put(
        endPoint,
        data: data,
      ),
      authorization: true,
      onSuccess: onSuccess,
    );
  }

  Future<ApiResult<T>> delete<T>(String endPoint) async {
    return await sendRequest<T>(
      () async => _dio.delete(
        endPoint,
      ),
      authorization: true,
    );
  }

  Future<ApiResult<T>> sendRequest<T>(
    Future<Response<dynamic>> Function() httpRequest, {
    bool authorization = false,
    dynamic Function(Response<dynamic>)? onSuccess,
  }) async {
    if (authorization) setAuthorization();
    _setAcceptLanguage();

    try {
      Response<dynamic> response = await httpRequest();
      return ApiResult.success(
        data: onSuccess?.call(response) ?? 'success',
      );
    } catch (e) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  void setAuthorization() {
    // Auth auth = Auth();
    // if (auth.isAuth) {
    _dio.options.headers['Authorization'] =
        'Bearer f7db9854f528f8981be41750b1279725';
    // }
  }

  void _setAcceptLanguage() {
    // _dio.options.headers['Accept-Language'] =
    // UserPrefs().getLocale()?.languageCode;
  }
}

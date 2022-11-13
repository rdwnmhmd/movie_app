part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.isLoading() = _IsLoading;
  const factory AuthState.isError(NetworkExceptions networkExceptions) =
      _IsError;

  const factory AuthState.loadedShow(AuthModel authModel) = _LoadedShow;
  const factory AuthState.isAuth(bool isAuth) = _IsAuth;
}

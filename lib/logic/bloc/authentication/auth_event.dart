part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.appLoaded() = _AppLoaded;
  const factory AuthEvent.login(LoginRequest loginRequest) = _Login;
  const factory AuthEvent.register(RegisterRequest registerRequest) = _Register;
}

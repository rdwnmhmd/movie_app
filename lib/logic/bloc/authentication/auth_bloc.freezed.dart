// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLoaded,
    required TResult Function(LoginRequest loginRequest) login,
    required TResult Function(RegisterRequest registerRequest) register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLoaded,
    TResult? Function(LoginRequest loginRequest)? login,
    TResult? Function(RegisterRequest registerRequest)? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLoaded,
    TResult Function(LoginRequest loginRequest)? login,
    TResult Function(RegisterRequest registerRequest)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$_AppLoaded implements _AppLoaded {
  const _$_AppLoaded();

  @override
  String toString() {
    return 'AuthEvent.appLoaded()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLoaded,
    required TResult Function(LoginRequest loginRequest) login,
    required TResult Function(RegisterRequest registerRequest) register,
  }) {
    return appLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLoaded,
    TResult? Function(LoginRequest loginRequest)? login,
    TResult? Function(RegisterRequest registerRequest)? register,
  }) {
    return appLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLoaded,
    TResult Function(LoginRequest loginRequest)? login,
    TResult Function(RegisterRequest registerRequest)? register,
    required TResult orElse(),
  }) {
    if (appLoaded != null) {
      return appLoaded();
    }
    return orElse();
  }
}

abstract class _AppLoaded implements AuthEvent {
  const factory _AppLoaded() = _$_AppLoaded;
}

/// @nodoc

class _$_Login implements _Login {
  const _$_Login(this.loginRequest);

  @override
  final LoginRequest loginRequest;

  @override
  String toString() {
    return 'AuthEvent.login(loginRequest: $loginRequest)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLoaded,
    required TResult Function(LoginRequest loginRequest) login,
    required TResult Function(RegisterRequest registerRequest) register,
  }) {
    return login(loginRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLoaded,
    TResult? Function(LoginRequest loginRequest)? login,
    TResult? Function(RegisterRequest registerRequest)? register,
  }) {
    return login?.call(loginRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLoaded,
    TResult Function(LoginRequest loginRequest)? login,
    TResult Function(RegisterRequest registerRequest)? register,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(loginRequest);
    }
    return orElse();
  }
}

abstract class _Login implements AuthEvent {
  const factory _Login(final LoginRequest loginRequest) = _$_Login;

  LoginRequest get loginRequest;
}

/// @nodoc

class _$_Register implements _Register {
  const _$_Register(this.registerRequest);

  @override
  final RegisterRequest registerRequest;

  @override
  String toString() {
    return 'AuthEvent.register(registerRequest: $registerRequest)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLoaded,
    required TResult Function(LoginRequest loginRequest) login,
    required TResult Function(RegisterRequest registerRequest) register,
  }) {
    return register(registerRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLoaded,
    TResult? Function(LoginRequest loginRequest)? login,
    TResult? Function(RegisterRequest registerRequest)? register,
  }) {
    return register?.call(registerRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLoaded,
    TResult Function(LoginRequest loginRequest)? login,
    TResult Function(RegisterRequest registerRequest)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(registerRequest);
    }
    return orElse();
  }
}

abstract class _Register implements AuthEvent {
  const factory _Register(final RegisterRequest registerRequest) = _$_Register;

  RegisterRequest get registerRequest;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(NetworkExceptions networkExceptions) isError,
    required TResult Function(AuthModel authModel) loadedShow,
    required TResult Function(bool isAuth) isAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isLoading,
    TResult? Function(NetworkExceptions networkExceptions)? isError,
    TResult? Function(AuthModel authModel)? loadedShow,
    TResult? Function(bool isAuth)? isAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(NetworkExceptions networkExceptions)? isError,
    TResult Function(AuthModel authModel)? loadedShow,
    TResult Function(bool isAuth)? isAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(NetworkExceptions networkExceptions) isError,
    required TResult Function(AuthModel authModel) loadedShow,
    required TResult Function(bool isAuth) isAuth,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isLoading,
    TResult? Function(NetworkExceptions networkExceptions)? isError,
    TResult? Function(AuthModel authModel)? loadedShow,
    TResult? Function(bool isAuth)? isAuth,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(NetworkExceptions networkExceptions)? isError,
    TResult Function(AuthModel authModel)? loadedShow,
    TResult Function(bool isAuth)? isAuth,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc

class _$_IsLoading implements _IsLoading {
  const _$_IsLoading();

  @override
  String toString() {
    return 'AuthState.isLoading()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(NetworkExceptions networkExceptions) isError,
    required TResult Function(AuthModel authModel) loadedShow,
    required TResult Function(bool isAuth) isAuth,
  }) {
    return isLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isLoading,
    TResult? Function(NetworkExceptions networkExceptions)? isError,
    TResult? Function(AuthModel authModel)? loadedShow,
    TResult? Function(bool isAuth)? isAuth,
  }) {
    return isLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(NetworkExceptions networkExceptions)? isError,
    TResult Function(AuthModel authModel)? loadedShow,
    TResult Function(bool isAuth)? isAuth,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading();
    }
    return orElse();
  }
}

abstract class _IsLoading implements AuthState {
  const factory _IsLoading() = _$_IsLoading;
}

/// @nodoc

class _$_IsError implements _IsError {
  const _$_IsError(this.networkExceptions);

  @override
  final NetworkExceptions networkExceptions;

  @override
  String toString() {
    return 'AuthState.isError(networkExceptions: $networkExceptions)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(NetworkExceptions networkExceptions) isError,
    required TResult Function(AuthModel authModel) loadedShow,
    required TResult Function(bool isAuth) isAuth,
  }) {
    return isError(networkExceptions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isLoading,
    TResult? Function(NetworkExceptions networkExceptions)? isError,
    TResult? Function(AuthModel authModel)? loadedShow,
    TResult? Function(bool isAuth)? isAuth,
  }) {
    return isError?.call(networkExceptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(NetworkExceptions networkExceptions)? isError,
    TResult Function(AuthModel authModel)? loadedShow,
    TResult Function(bool isAuth)? isAuth,
    required TResult orElse(),
  }) {
    if (isError != null) {
      return isError(networkExceptions);
    }
    return orElse();
  }
}

abstract class _IsError implements AuthState {
  const factory _IsError(final NetworkExceptions networkExceptions) =
      _$_IsError;

  NetworkExceptions get networkExceptions;
}

/// @nodoc

class _$_LoadedShow implements _LoadedShow {
  const _$_LoadedShow(this.authModel);

  @override
  final AuthModel authModel;

  @override
  String toString() {
    return 'AuthState.loadedShow(authModel: $authModel)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(NetworkExceptions networkExceptions) isError,
    required TResult Function(AuthModel authModel) loadedShow,
    required TResult Function(bool isAuth) isAuth,
  }) {
    return loadedShow(authModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isLoading,
    TResult? Function(NetworkExceptions networkExceptions)? isError,
    TResult? Function(AuthModel authModel)? loadedShow,
    TResult? Function(bool isAuth)? isAuth,
  }) {
    return loadedShow?.call(authModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(NetworkExceptions networkExceptions)? isError,
    TResult Function(AuthModel authModel)? loadedShow,
    TResult Function(bool isAuth)? isAuth,
    required TResult orElse(),
  }) {
    if (loadedShow != null) {
      return loadedShow(authModel);
    }
    return orElse();
  }
}

abstract class _LoadedShow implements AuthState {
  const factory _LoadedShow(final AuthModel authModel) = _$_LoadedShow;

  AuthModel get authModel;
}

/// @nodoc

class _$_IsAuth implements _IsAuth {
  const _$_IsAuth(this.isAuth);

  @override
  final bool isAuth;

  @override
  String toString() {
    return 'AuthState.isAuth(isAuth: $isAuth)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(NetworkExceptions networkExceptions) isError,
    required TResult Function(AuthModel authModel) loadedShow,
    required TResult Function(bool isAuth) isAuth,
  }) {
    return isAuth(this.isAuth);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isLoading,
    TResult? Function(NetworkExceptions networkExceptions)? isError,
    TResult? Function(AuthModel authModel)? loadedShow,
    TResult? Function(bool isAuth)? isAuth,
  }) {
    return isAuth?.call(this.isAuth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(NetworkExceptions networkExceptions)? isError,
    TResult Function(AuthModel authModel)? loadedShow,
    TResult Function(bool isAuth)? isAuth,
    required TResult orElse(),
  }) {
    if (isAuth != null) {
      return isAuth(this.isAuth);
    }
    return orElse();
  }
}

abstract class _IsAuth implements AuthState {
  const factory _IsAuth(final bool isAuth) = _$_IsAuth;

  bool get isAuth;
}

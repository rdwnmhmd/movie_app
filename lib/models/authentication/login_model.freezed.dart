// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthModel _$AuthModelFromJson(Map<String, dynamic> json) {
  return _AuthModel.fromJson(json);
}

/// @nodoc
mixin _$AuthModel {
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'token_type')
  String get tokenType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_AuthModel implements _AuthModel {
  const _$_AuthModel(
      {@JsonKey(name: 'access_token') required this.accessToken,
      @JsonKey(name: 'token_type') required this.tokenType});

  factory _$_AuthModel.fromJson(Map<String, dynamic> json) =>
      _$$_AuthModelFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
  @override
  @JsonKey(name: 'token_type')
  final String tokenType;

  @override
  String toString() {
    return 'AuthModel(accessToken: $accessToken, tokenType: $tokenType)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthModelToJson(
      this,
    );
  }
}

abstract class _AuthModel implements AuthModel {
  const factory _AuthModel(
          {@JsonKey(name: 'access_token') required final String accessToken,
          @JsonKey(name: 'token_type') required final String tokenType}) =
      _$_AuthModel;

  factory _AuthModel.fromJson(Map<String, dynamic> json) =
      _$_AuthModel.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(name: 'token_type')
  String get tokenType;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  int? get id => throw _privateConstructorUsedError;
  List<Roles>? get roles => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get profilePhotoUrl => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  bool? get isPasswordNull => throw _privateConstructorUsedError;
  List<BankAccount>? get bankAccounts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      {this.id,
      final List<Roles>? roles,
      this.name,
      this.email,
      this.phoneNumber,
      this.profilePhotoUrl,
      this.createdAt,
      this.updatedAt,
      this.isPasswordNull,
      final List<BankAccount>? bankAccounts})
      : _roles = roles,
        _bankAccounts = bankAccounts;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final int? id;
  final List<Roles>? _roles;
  @override
  List<Roles>? get roles {
    final value = _roles;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? phoneNumber;
  @override
  final String? profilePhotoUrl;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final bool? isPasswordNull;
  final List<BankAccount>? _bankAccounts;
  @override
  List<BankAccount>? get bankAccounts {
    final value = _bankAccounts;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data(id: $id, roles: $roles, name: $name, email: $email, phoneNumber: $phoneNumber, profilePhotoUrl: $profilePhotoUrl, createdAt: $createdAt, updatedAt: $updatedAt, isPasswordNull: $isPasswordNull, bankAccounts: $bankAccounts)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {final int? id,
      final List<Roles>? roles,
      final String? name,
      final String? email,
      final String? phoneNumber,
      final String? profilePhotoUrl,
      final String? createdAt,
      final String? updatedAt,
      final bool? isPasswordNull,
      final List<BankAccount>? bankAccounts}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  int? get id;
  @override
  List<Roles>? get roles;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get phoneNumber;
  @override
  String? get profilePhotoUrl;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  bool? get isPasswordNull;
  @override
  List<BankAccount>? get bankAccounts;
}

Roles _$RolesFromJson(Map<String, dynamic> json) {
  return _Roles.fromJson(json);
}

/// @nodoc
mixin _$Roles {
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_Roles implements _Roles {
  const _$_Roles({this.name});

  factory _$_Roles.fromJson(Map<String, dynamic> json) =>
      _$$_RolesFromJson(json);

  @override
  final String? name;

  @override
  String toString() {
    return 'Roles(name: $name)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_RolesToJson(
      this,
    );
  }
}

abstract class _Roles implements Roles {
  const factory _Roles({final String? name}) = _$_Roles;

  factory _Roles.fromJson(Map<String, dynamic> json) = _$_Roles.fromJson;

  @override
  String? get name;
}

LoginRequest _$LoginRequestFromJson(Map<String, dynamic> json) {
  return _LoginRequest.fromJson(json);
}

/// @nodoc
mixin _$LoginRequest {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_LoginRequest implements _LoginRequest {
  const _$_LoginRequest({required this.email, required this.password});

  factory _$_LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$$_LoginRequestFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginRequest(email: $email, password: $password)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginRequestToJson(
      this,
    );
  }
}

abstract class _LoginRequest implements LoginRequest {
  const factory _LoginRequest(
      {required final String email,
      required final String password}) = _$_LoginRequest;

  factory _LoginRequest.fromJson(Map<String, dynamic> json) =
      _$_LoginRequest.fromJson;

  @override
  String get email;
  @override
  String get password;
}

RegisterRequest _$RegisterRequestFromJson(Map<String, dynamic> json) {
  return _RegisterRequest.fromJson(json);
}

/// @nodoc
mixin _$RegisterRequest {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_RegisterRequest implements _RegisterRequest {
  const _$_RegisterRequest(
      {required this.name, required this.email, required this.password});

  factory _$_RegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterRequestFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'RegisterRequest(name: $name, email: $email, password: $password)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterRequestToJson(
      this,
    );
  }
}

abstract class _RegisterRequest implements RegisterRequest {
  const factory _RegisterRequest(
      {required final String name,
      required final String email,
      required final String password}) = _$_RegisterRequest;

  factory _RegisterRequest.fromJson(Map<String, dynamic> json) =
      _$_RegisterRequest.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  String get password;
}

import 'package:freezed_annotation/freezed_annotation.dart';

import '../model_bank_account/bank_account_model.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class AuthModel with _$AuthModel {
  const factory AuthModel({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'token_type') required String tokenType,
    // Data? data,
  }) = _AuthModel;

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    int? id,
    List<Roles>? roles,
    String? name,
    String? email,
    String? phoneNumber,
    String? profilePhotoUrl,
    String? createdAt,
    String? updatedAt,
    bool? isPasswordNull,
    List<BankAccount>? bankAccounts,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Roles with _$Roles {
  const factory Roles({
    String? name,
  }) = _Roles;

  factory Roles.fromJson(Map<String, dynamic> json) => _$RolesFromJson(json);
}

@freezed
class LoginRequest with _$LoginRequest {
  const factory LoginRequest({
    required String email,
    required String password,
  }) = _LoginRequest;

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);
}

@freezed
class RegisterRequest with _$RegisterRequest {
  const factory RegisterRequest({
    required String name,
    required String email,
    required String password,
  }) = _RegisterRequest;

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestFromJson(json);
}

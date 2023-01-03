import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@freezed
class MovieAuthModel with _$MovieAuthModel {
  const factory MovieAuthModel({
    required int code,
    required String message,
    // List<MovieLoginRequest>? data,
    // Links? links,
    // Meta? meta,
  }) = _MovieAuthModel;

  factory MovieAuthModel.fromJson(Map<String, dynamic> json) =>
      _$MovieAuthModelFromJson(json);
}

@freezed
class MovieLoginRequest with _$MovieLoginRequest {
  const factory MovieLoginRequest({
    required int id,
    required String name,
    required String email,
    required String token,
  }) = _MovieLoginRequest;

  factory MovieLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$MovieLoginRequestFromJson(json);
}

@freezed
class MovieRegisterRequest with _$MovieRegisterRequest {
  const factory MovieRegisterRequest({
    required String name,
    required String email,
    required String password,
  }) = _MovieRegisterRequest;

  factory MovieRegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$MovieRegisterRequestFromJson(json);
}
// @freezed
// class BankAccountRequest with _$BankAccountRequest {
//   const factory BankAccountRequest({
//     required String bank,
//     @JsonKey(name: 'account_name') required String accountName,
//     @JsonKey(name: 'account_number') required String accountNumber,
//   }) = _BankAccountRequest;

//   factory BankAccountRequest.fromJson(Map<String, dynamic> json) =>
//       _$BankAccountRequestFromJson(json);
// }

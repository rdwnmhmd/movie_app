import 'package:freezed_annotation/freezed_annotation.dart';
import 'links.dart';
import 'meta.dart';
part 'bank_account_model.freezed.dart';
part 'bank_account_model.g.dart';

@freezed
class BankAccountModel with _$BankAccountModel {
  const factory BankAccountModel({
    List<BankAccount>? data,
    Links? links,
    Meta? meta,
  }) = _BankAccountModel;

  factory BankAccountModel.fromJson(Map<String, dynamic> json) =>
      _$BankAccountModelFromJson(json);
}

@freezed
class BankAccount with _$BankAccount {
  const factory BankAccount({
    required int id,
    @JsonKey(name: 'user_id') required String userId,
    required String bank,
    @JsonKey(name: 'account_name') required String accountName,
    @JsonKey(name: 'account_number') required String accountNumber,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _BankAccount;

  factory BankAccount.fromJson(Map<String, dynamic> json) =>
      _$BankAccountFromJson(json);
}

@freezed
class BankAccountRequest with _$BankAccountRequest {
  const factory BankAccountRequest({
    required String bank,
    @JsonKey(name: 'account_name') required String accountName,
    @JsonKey(name: 'account_number') required String accountNumber,
  }) = _BankAccountRequest;

  factory BankAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$BankAccountRequestFromJson(json);
}

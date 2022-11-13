// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bank_account_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BankAccountModel _$BankAccountModelFromJson(Map<String, dynamic> json) {
  return _BankAccountModel.fromJson(json);
}

/// @nodoc
mixin _$BankAccountModel {
  List<BankAccount>? get data => throw _privateConstructorUsedError;
  Links? get links => throw _privateConstructorUsedError;
  Meta? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_BankAccountModel implements _BankAccountModel {
  const _$_BankAccountModel(
      {final List<BankAccount>? data, this.links, this.meta})
      : _data = data;

  factory _$_BankAccountModel.fromJson(Map<String, dynamic> json) =>
      _$$_BankAccountModelFromJson(json);

  final List<BankAccount>? _data;
  @override
  List<BankAccount>? get data {
    final value = _data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Links? links;
  @override
  final Meta? meta;

  @override
  String toString() {
    return 'BankAccountModel(data: $data, links: $links, meta: $meta)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_BankAccountModelToJson(
      this,
    );
  }
}

abstract class _BankAccountModel implements BankAccountModel {
  const factory _BankAccountModel(
      {final List<BankAccount>? data,
      final Links? links,
      final Meta? meta}) = _$_BankAccountModel;

  factory _BankAccountModel.fromJson(Map<String, dynamic> json) =
      _$_BankAccountModel.fromJson;

  @override
  List<BankAccount>? get data;
  @override
  Links? get links;
  @override
  Meta? get meta;
}

BankAccount _$BankAccountFromJson(Map<String, dynamic> json) {
  return _BankAccount.fromJson(json);
}

/// @nodoc
mixin _$BankAccount {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  String get bank => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_name')
  String get accountName => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_number')
  String get accountNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_BankAccount implements _BankAccount {
  const _$_BankAccount(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      required this.bank,
      @JsonKey(name: 'account_name') required this.accountName,
      @JsonKey(name: 'account_number') required this.accountNumber,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$_BankAccount.fromJson(Map<String, dynamic> json) =>
      _$$_BankAccountFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  final String bank;
  @override
  @JsonKey(name: 'account_name')
  final String accountName;
  @override
  @JsonKey(name: 'account_number')
  final String accountNumber;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  @override
  String toString() {
    return 'BankAccount(id: $id, userId: $userId, bank: $bank, accountName: $accountName, accountNumber: $accountNumber, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_BankAccountToJson(
      this,
    );
  }
}

abstract class _BankAccount implements BankAccount {
  const factory _BankAccount(
          {required final int id,
          @JsonKey(name: 'user_id') required final String userId,
          required final String bank,
          @JsonKey(name: 'account_name') required final String accountName,
          @JsonKey(name: 'account_number') required final String accountNumber,
          @JsonKey(name: 'created_at') required final String createdAt,
          @JsonKey(name: 'updated_at') required final String updatedAt}) =
      _$_BankAccount;

  factory _BankAccount.fromJson(Map<String, dynamic> json) =
      _$_BankAccount.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  String get bank;
  @override
  @JsonKey(name: 'account_name')
  String get accountName;
  @override
  @JsonKey(name: 'account_number')
  String get accountNumber;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
}

BankAccountRequest _$BankAccountRequestFromJson(Map<String, dynamic> json) {
  return _BankAccountRequest.fromJson(json);
}

/// @nodoc
mixin _$BankAccountRequest {
  String get bank => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_name')
  String get accountName => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_number')
  String get accountNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_BankAccountRequest implements _BankAccountRequest {
  const _$_BankAccountRequest(
      {required this.bank,
      @JsonKey(name: 'account_name') required this.accountName,
      @JsonKey(name: 'account_number') required this.accountNumber});

  factory _$_BankAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$$_BankAccountRequestFromJson(json);

  @override
  final String bank;
  @override
  @JsonKey(name: 'account_name')
  final String accountName;
  @override
  @JsonKey(name: 'account_number')
  final String accountNumber;

  @override
  String toString() {
    return 'BankAccountRequest(bank: $bank, accountName: $accountName, accountNumber: $accountNumber)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_BankAccountRequestToJson(
      this,
    );
  }
}

abstract class _BankAccountRequest implements BankAccountRequest {
  const factory _BankAccountRequest(
      {required final String bank,
      @JsonKey(name: 'account_name')
          required final String accountName,
      @JsonKey(name: 'account_number')
          required final String accountNumber}) = _$_BankAccountRequest;

  factory _BankAccountRequest.fromJson(Map<String, dynamic> json) =
      _$_BankAccountRequest.fromJson;

  @override
  String get bank;
  @override
  @JsonKey(name: 'account_name')
  String get accountName;
  @override
  @JsonKey(name: 'account_number')
  String get accountNumber;
}

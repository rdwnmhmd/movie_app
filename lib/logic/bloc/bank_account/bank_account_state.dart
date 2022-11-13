part of 'bank_account_bloc.dart';

@freezed
class BankAccountState with _$BankAccountState {
  const factory BankAccountState.initial() = _Initial;
  const factory BankAccountState.isLoading() = _IsLoading;
  const factory BankAccountState.isError(NetworkExceptions networkExceptions) =
      _IsError;

  const factory BankAccountState.loadedShow(List<BankAccount> bankaccount) =
      _LoadedShow;

  const factory BankAccountState.deleted() = _Deleted;
  const factory BankAccountState.stored() = _Stored;
  const factory BankAccountState.updated() = _Updated;
}

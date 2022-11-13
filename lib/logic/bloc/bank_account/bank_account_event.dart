part of 'bank_account_bloc.dart';

@freezed
class BankAccountEvent with _$BankAccountEvent {
  const factory BankAccountEvent.started() = _Started;

  const factory BankAccountEvent.show() = _Show;
  const factory BankAccountEvent.showAll() = _ShowAll;
  const factory BankAccountEvent.delete(int id) = _Delete;
  const factory BankAccountEvent.create(BankAccountRequest bankAccountRequest) =
      _Create;
  const factory BankAccountEvent.update(
      BankAccountRequest bankAccountRequest, int id) = _Update;
}

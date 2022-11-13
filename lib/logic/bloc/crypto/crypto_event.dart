part of 'crypto_bloc.dart';

@freezed
class CryptoEvent with _$CryptoEvent {
  const factory CryptoEvent.started() = _Started;

  const factory CryptoEvent.show() = _Show;
}

part of 'crypto_bloc.dart';

@freezed
class CryptoState with _$CryptoState {
  const factory CryptoState.initial() = _Initial;
  const factory CryptoState.isLoading() = _IsLoading;
  const factory CryptoState.isError(NetworkExceptions networkExceptions) =
      _IsError;

  const factory CryptoState.loadedShow(List<Crypto> crypto) = _LoadedShow;
}

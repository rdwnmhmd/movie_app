part of 'outlet_bloc.dart';

@freezed
class OutletState with _$OutletState {
  const factory OutletState.initial() = _Initial;
  const factory OutletState.isLoading() = _IsLoading;
  const factory OutletState.isError(NetworkExceptions networkExceptions) =
      _IsError;

  const factory OutletState.loadedShow(List<Outlet> crypto) = _LoadedShow;
}

part of 'movie_bloc.dart';

@freezed
class MovieState with _$MovieState {
  const factory MovieState.initial() = _Initial;
  const factory MovieState.isLoading() = _IsLoading;
  const factory MovieState.isError(NetworkExceptions networkExceptions) =
      _IsError;

  const factory MovieState.loadedShow(List<Movie> movie) = _LoadedShow;
}

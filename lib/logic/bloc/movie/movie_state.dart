part of 'movie_bloc.dart';

@freezed
class MovieState with _$MovieState {
  const factory MovieState.initial() = _Initial;
  const factory MovieState.isLoading() = _IsLoading;
  const factory MovieState.isError(NetworkExceptions networkExceptions) =
      _IsError;

  const factory MovieState.loadedShow(List<Movie> movie) = _LoadedShow;
}

@freezed
class MovieStatePopular with _$MovieStatePopular {
  const factory MovieStatePopular.initial() = _InitialPopular;
  const factory MovieStatePopular.isLoading() = _IsLoadingPopular;
  const factory MovieStatePopular.isError(NetworkExceptions networkExceptions) =
      _IsErrorPopular;

  const factory MovieStatePopular.loadedShow(List<MoviePopular> moviePopular) =
      _LoadedShowPopular;
}

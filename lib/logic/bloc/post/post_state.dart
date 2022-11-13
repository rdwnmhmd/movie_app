part of 'post_bloc.dart';

@freezed
class PostState with _$PostState {
  const factory PostState.initial() = _Initial;
  const factory PostState.isLoading() = _IsLoading;
  const factory PostState.isError(NetworkExceptions networkExceptions) =
      _IsError;

  const factory PostState.loadedShow(Post post) = _LoadedShow;
}

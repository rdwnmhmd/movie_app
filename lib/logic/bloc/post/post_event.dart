part of 'post_bloc.dart';

@freezed
class PostEvent with _$PostEvent {
  const factory PostEvent.started() = _Started;

  const factory PostEvent.show(int id) = _Show;
}

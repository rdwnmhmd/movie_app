part of 'outlet_bloc.dart';

@freezed
class OutletEvent with _$OutletEvent {
  const factory OutletEvent.started() = _Started;

  const factory OutletEvent.show() = _Show;
}

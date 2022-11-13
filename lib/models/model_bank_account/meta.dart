import 'package:freezed_annotation/freezed_annotation.dart';
part 'meta.freezed.dart';
part 'meta.g.dart';

@freezed
class Meta with _$Meta {
  const factory Meta({
    @JsonKey(name: 'current_page') required int currentPage,
    required int from,
    required String path,
    @JsonKey(name: 'per_page') required int perPage,
    required int to,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

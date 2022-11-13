import 'package:freezed_annotation/freezed_annotation.dart';

part 'program_category.g.dart';
part 'program_category.freezed.dart';

@freezed
class ProgramCategory with _$ProgramCategory {
  const factory ProgramCategory({
    required int id,
    @JsonKey(name: 'image_url') required String imageUrl,
    required String name,
    required String slug,
    @JsonKey(name: 'color_hex') required String colorHex,
    String? description,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _ProgramCategory;

  const ProgramCategory._();

  factory ProgramCategory.fromJson(Map<String, dynamic> map) =>
      _$ProgramCategoryFromJson(map);
}

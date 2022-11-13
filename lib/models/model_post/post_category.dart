import 'package:freezed_annotation/freezed_annotation.dart';
part 'post_category.g.dart';
part 'post_category.freezed.dart';

@freezed
class PostCategory with _$PostCategory {
  const factory PostCategory({
    required int id,
    required String name,
  }) = _PostCategory;

  const PostCategory._();

  factory PostCategory.fromJson(Map<String, dynamic> map) =>
      _$PostCategoryFromJson(map);
}

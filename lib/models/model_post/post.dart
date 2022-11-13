import 'package:freezed_annotation/freezed_annotation.dart';
import 'post_category.dart';

part 'post.g.dart';
part 'post.freezed.dart';

@freezed
class Post with _$Post {
  const factory Post({
    required int id,
    required String title,
    required String slug,
    required String description,
    String? content,
    String? tags,
    @JsonKey(name: 'has_favorited') bool? hasFavorited,
    @JsonKey(name: "created_at") required String createdAt,
    @JsonKey(name: "image_url") required String imageUrl,
    required PostCategory category,
  }) = _Post;

  const Post._();

  factory Post.fromJson(Map<String, dynamic> map) => _$PostFromJson(map);
}

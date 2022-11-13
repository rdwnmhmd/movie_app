// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostCategory _$PostCategoryFromJson(Map<String, dynamic> json) {
  return _PostCategory.fromJson(json);
}

/// @nodoc
mixin _$PostCategory {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_PostCategory extends _PostCategory {
  const _$_PostCategory({required this.id, required this.name}) : super._();

  factory _$_PostCategory.fromJson(Map<String, dynamic> json) =>
      _$$_PostCategoryFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'PostCategory(id: $id, name: $name)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostCategoryToJson(
      this,
    );
  }
}

abstract class _PostCategory extends PostCategory {
  const factory _PostCategory(
      {required final int id, required final String name}) = _$_PostCategory;
  const _PostCategory._() : super._();

  factory _PostCategory.fromJson(Map<String, dynamic> json) =
      _$_PostCategory.fromJson;

  @override
  int get id;
  @override
  String get name;
}

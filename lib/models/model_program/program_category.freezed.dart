// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'program_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProgramCategory _$ProgramCategoryFromJson(Map<String, dynamic> json) {
  return _ProgramCategory.fromJson(json);
}

/// @nodoc
mixin _$ProgramCategory {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  @JsonKey(name: 'color_hex')
  String get colorHex => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_ProgramCategory extends _ProgramCategory {
  const _$_ProgramCategory(
      {required this.id,
      @JsonKey(name: 'image_url') required this.imageUrl,
      required this.name,
      required this.slug,
      @JsonKey(name: 'color_hex') required this.colorHex,
      this.description,
      @JsonKey(name: 'created_at') required this.createdAt})
      : super._();

  factory _$_ProgramCategory.fromJson(Map<String, dynamic> json) =>
      _$$_ProgramCategoryFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  final String name;
  @override
  final String slug;
  @override
  @JsonKey(name: 'color_hex')
  final String colorHex;
  @override
  final String? description;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;

  @override
  String toString() {
    return 'ProgramCategory(id: $id, imageUrl: $imageUrl, name: $name, slug: $slug, colorHex: $colorHex, description: $description, createdAt: $createdAt)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProgramCategoryToJson(
      this,
    );
  }
}

abstract class _ProgramCategory extends ProgramCategory {
  const factory _ProgramCategory(
          {required final int id,
          @JsonKey(name: 'image_url') required final String imageUrl,
          required final String name,
          required final String slug,
          @JsonKey(name: 'color_hex') required final String colorHex,
          final String? description,
          @JsonKey(name: 'created_at') required final String createdAt}) =
      _$_ProgramCategory;
  const _ProgramCategory._() : super._();

  factory _ProgramCategory.fromJson(Map<String, dynamic> json) =
      _$_ProgramCategory.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  String get name;
  @override
  String get slug;
  @override
  @JsonKey(name: 'color_hex')
  String get colorHex;
  @override
  String? get description;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
}

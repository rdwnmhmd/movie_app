// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'program_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProgramCategory _$$_ProgramCategoryFromJson(Map<String, dynamic> json) =>
    _$_ProgramCategory(
      id: json['id'] as int,
      imageUrl: json['image_url'] as String,
      name: json['name'] as String,
      slug: json['slug'] as String,
      colorHex: json['color_hex'] as String,
      description: json['description'] as String?,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$$_ProgramCategoryToJson(_$_ProgramCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image_url': instance.imageUrl,
      'name': instance.name,
      'slug': instance.slug,
      'color_hex': instance.colorHex,
      'description': instance.description,
      'created_at': instance.createdAt,
    };

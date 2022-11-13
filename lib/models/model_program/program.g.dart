// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'program.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Program _$$_ProgramFromJson(Map<String, dynamic> json) => _$_Program(
      id: json['id'] as int,
      imageUrl: json['image_url'] as String,
      coverImageUrl: json['cover_image_url'] as String,
      title: json['title'] as String,
      slug: json['slug'] as String,
      description: json['description'] as String,
      content: json['content'] as String,
      scheduledDate: json['scheduled_date'] as String,
      registerUrl: json['register_url'] as String,
      websiteUrl: json['website_url'] as String,
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String,
      countryCode: json['country_code'] as String,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      createdAt: json['created_at'] as String,
      university: json['university'] as String?,
      programCategory: ProgramCategory.fromJson(
          json['program_category'] as Map<String, dynamic>),
      hasFavorited: json['has_favorite'] as bool?,
      lastComment: json['last_comment'] as bool?,
    );

Map<String, dynamic> _$$_ProgramToJson(_$_Program instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image_url': instance.imageUrl,
      'cover_image_url': instance.coverImageUrl,
      'title': instance.title,
      'slug': instance.slug,
      'description': instance.description,
      'content': instance.content,
      'scheduled_date': instance.scheduledDate,
      'register_url': instance.registerUrl,
      'website_url': instance.websiteUrl,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'country_code': instance.countryCode,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'created_at': instance.createdAt,
      'university': instance.university,
      'program_category': instance.programCategory,
      'has_favorite': instance.hasFavorited,
      'last_comment': instance.lastComment,
    };

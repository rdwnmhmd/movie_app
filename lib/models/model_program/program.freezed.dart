// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'program.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Program _$ProgramFromJson(Map<String, dynamic> json) {
  return _Program.fromJson(json);
}

/// @nodoc
mixin _$Program {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover_image_url')
  String get coverImageUrl => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'scheduled_date')
  String get scheduledDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'register_url')
  String get registerUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'website_url')
  String get websiteUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_code')
  String get countryCode => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  String? get university => throw _privateConstructorUsedError;
  @JsonKey(name: "program_category")
  ProgramCategory get programCategory => throw _privateConstructorUsedError;
  @JsonKey(name: "has_favorite")
  bool? get hasFavorited => throw _privateConstructorUsedError;
  @JsonKey(name: "last_comment")
  bool? get lastComment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_Program extends _Program {
  const _$_Program(
      {required this.id,
      @JsonKey(name: 'image_url') required this.imageUrl,
      @JsonKey(name: 'cover_image_url') required this.coverImageUrl,
      required this.title,
      required this.slug,
      required this.description,
      required this.content,
      @JsonKey(name: 'scheduled_date') required this.scheduledDate,
      @JsonKey(name: 'register_url') required this.registerUrl,
      @JsonKey(name: 'website_url') required this.websiteUrl,
      @JsonKey(name: 'start_date') required this.startDate,
      @JsonKey(name: 'end_date') required this.endDate,
      @JsonKey(name: 'country_code') required this.countryCode,
      this.latitude,
      this.longitude,
      @JsonKey(name: 'created_at') required this.createdAt,
      this.university,
      @JsonKey(name: "program_category") required this.programCategory,
      @JsonKey(name: "has_favorite") this.hasFavorited,
      @JsonKey(name: "last_comment") this.lastComment})
      : super._();

  factory _$_Program.fromJson(Map<String, dynamic> json) =>
      _$$_ProgramFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  @JsonKey(name: 'cover_image_url')
  final String coverImageUrl;
  @override
  final String title;
  @override
  final String slug;
  @override
  final String description;
  @override
  final String content;
  @override
  @JsonKey(name: 'scheduled_date')
  final String scheduledDate;
  @override
  @JsonKey(name: 'register_url')
  final String registerUrl;
  @override
  @JsonKey(name: 'website_url')
  final String websiteUrl;
  @override
  @JsonKey(name: 'start_date')
  final String startDate;
  @override
  @JsonKey(name: 'end_date')
  final String endDate;
  @override
  @JsonKey(name: 'country_code')
  final String countryCode;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  final String? university;
  @override
  @JsonKey(name: "program_category")
  final ProgramCategory programCategory;
  @override
  @JsonKey(name: "has_favorite")
  final bool? hasFavorited;
  @override
  @JsonKey(name: "last_comment")
  final bool? lastComment;

  @override
  String toString() {
    return 'Program(id: $id, imageUrl: $imageUrl, coverImageUrl: $coverImageUrl, title: $title, slug: $slug, description: $description, content: $content, scheduledDate: $scheduledDate, registerUrl: $registerUrl, websiteUrl: $websiteUrl, startDate: $startDate, endDate: $endDate, countryCode: $countryCode, latitude: $latitude, longitude: $longitude, createdAt: $createdAt, university: $university, programCategory: $programCategory, hasFavorited: $hasFavorited, lastComment: $lastComment)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProgramToJson(
      this,
    );
  }
}

abstract class _Program extends Program {
  const factory _Program(
      {required final int id,
      @JsonKey(name: 'image_url')
          required final String imageUrl,
      @JsonKey(name: 'cover_image_url')
          required final String coverImageUrl,
      required final String title,
      required final String slug,
      required final String description,
      required final String content,
      @JsonKey(name: 'scheduled_date')
          required final String scheduledDate,
      @JsonKey(name: 'register_url')
          required final String registerUrl,
      @JsonKey(name: 'website_url')
          required final String websiteUrl,
      @JsonKey(name: 'start_date')
          required final String startDate,
      @JsonKey(name: 'end_date')
          required final String endDate,
      @JsonKey(name: 'country_code')
          required final String countryCode,
      final double? latitude,
      final double? longitude,
      @JsonKey(name: 'created_at')
          required final String createdAt,
      final String? university,
      @JsonKey(name: "program_category")
          required final ProgramCategory programCategory,
      @JsonKey(name: "has_favorite")
          final bool? hasFavorited,
      @JsonKey(name: "last_comment")
          final bool? lastComment}) = _$_Program;
  const _Program._() : super._();

  factory _Program.fromJson(Map<String, dynamic> json) = _$_Program.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  @JsonKey(name: 'cover_image_url')
  String get coverImageUrl;
  @override
  String get title;
  @override
  String get slug;
  @override
  String get description;
  @override
  String get content;
  @override
  @JsonKey(name: 'scheduled_date')
  String get scheduledDate;
  @override
  @JsonKey(name: 'register_url')
  String get registerUrl;
  @override
  @JsonKey(name: 'website_url')
  String get websiteUrl;
  @override
  @JsonKey(name: 'start_date')
  String get startDate;
  @override
  @JsonKey(name: 'end_date')
  String get endDate;
  @override
  @JsonKey(name: 'country_code')
  String get countryCode;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  String? get university;
  @override
  @JsonKey(name: "program_category")
  ProgramCategory get programCategory;
  @override
  @JsonKey(name: "has_favorite")
  bool? get hasFavorited;
  @override
  @JsonKey(name: "last_comment")
  bool? get lastComment;
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'program_category.dart';

part 'program.g.dart';
part 'program.freezed.dart';

@freezed
class Program with _$Program {
  const factory Program({
    required int id,
    @JsonKey(name: 'image_url') required String imageUrl,
    @JsonKey(name: 'cover_image_url') required String coverImageUrl,
    required String title,
    required String slug,
    required String description,
    required String content,
    @JsonKey(name: 'scheduled_date') required String scheduledDate,
    @JsonKey(name: 'register_url') required String registerUrl,
    @JsonKey(name: 'website_url') required String websiteUrl,
    @JsonKey(name: 'start_date') required String startDate,
    @JsonKey(name: 'end_date') required String endDate,
    @JsonKey(name: 'country_code') required String countryCode,
    double? latitude,
    double? longitude,
    @JsonKey(name: 'created_at') required String createdAt,
    String? university,
    @JsonKey(name: "program_category") required ProgramCategory programCategory,
    @JsonKey(name: "has_favorite") bool? hasFavorited,
    @JsonKey(name: "last_comment") bool? lastComment,
  }) = _Program;

  const Program._();

  factory Program.fromJson(Map<String, dynamic> map) => _$ProgramFromJson(map);
}

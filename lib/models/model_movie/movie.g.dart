// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Movie _$$_MovieFromJson(Map<String, dynamic> json) => _$_Movie(
      id: json['id'] as int,
      title: json['title'] as String,
      overview: json['overview'] as String,
      backdropPath: json['backdrop_path'] as String,
      posterPath: json['poster_path'] as String,
      releaseDate: json['release_date'] as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
    );

Map<String, dynamic> _$$_MovieToJson(_$_Movie instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'overview': instance.overview,
      'backdrop_path': instance.backdropPath,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'vote_average': instance.voteAverage,
    };

_$_ListMovie _$$_ListMovieFromJson(Map<String, dynamic> json) => _$_ListMovie(
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Movie.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListMovieToJson(_$_ListMovie instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
    };

_$_MoviePopular _$$_MoviePopularFromJson(Map<String, dynamic> json) =>
    _$_MoviePopular(
      id: json['id'] as int,
      title: json['title'] as String,
      overview: json['overview'] as String,
      backdropPath: json['backdrop_path'] as String,
      posterPath: json['poster_path'] as String,
      releaseDate: json['release_date'] as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
    );

Map<String, dynamic> _$$_MoviePopularToJson(_$_MoviePopular instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'overview': instance.overview,
      'backdrop_path': instance.backdropPath,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'vote_average': instance.voteAverage,
    };

_$_ListPopular _$$_ListPopularFromJson(Map<String, dynamic> json) =>
    _$_ListPopular(
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => MoviePopular.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListPopularToJson(_$_ListPopular instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
    };

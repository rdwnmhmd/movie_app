// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return _Movie.fromJson(json);
}

/// @nodoc
mixin _$Movie {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: "backdrop_path")
  String get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "release_date")
  String get releaseDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_Movie extends _Movie {
  const _$_Movie(
      {required this.id,
      required this.title,
      required this.overview,
      @JsonKey(name: "backdrop_path") required this.backdropPath,
      @JsonKey(name: "poster_path") required this.posterPath,
      @JsonKey(name: "release_date") required this.releaseDate})
      : super._();

  factory _$_Movie.fromJson(Map<String, dynamic> json) =>
      _$$_MovieFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String overview;
  @override
  @JsonKey(name: "backdrop_path")
  final String backdropPath;
  @override
  @JsonKey(name: "poster_path")
  final String posterPath;
  @override
  @JsonKey(name: "release_date")
  final String releaseDate;

  @override
  String toString() {
    return 'Movie(id: $id, title: $title, overview: $overview, backdropPath: $backdropPath, posterPath: $posterPath, releaseDate: $releaseDate)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieToJson(
      this,
    );
  }
}

abstract class _Movie extends Movie {
  const factory _Movie(
          {required final int id,
          required final String title,
          required final String overview,
          @JsonKey(name: "backdrop_path") required final String backdropPath,
          @JsonKey(name: "poster_path") required final String posterPath,
          @JsonKey(name: "release_date") required final String releaseDate}) =
      _$_Movie;
  const _Movie._() : super._();

  factory _Movie.fromJson(Map<String, dynamic> json) = _$_Movie.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get overview;
  @override
  @JsonKey(name: "backdrop_path")
  String get backdropPath;
  @override
  @JsonKey(name: "poster_path")
  String get posterPath;
  @override
  @JsonKey(name: "release_date")
  String get releaseDate;
}

MovieResult _$MovieResultFromJson(Map<String, dynamic> json) {
  return _ListMovie.fromJson(json);
}

/// @nodoc
mixin _$MovieResult {
  int get page => throw _privateConstructorUsedError;
  List<Movie>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_ListMovie implements _ListMovie {
  const _$_ListMovie({required this.page, final List<Movie>? results})
      : _results = results;

  factory _$_ListMovie.fromJson(Map<String, dynamic> json) =>
      _$$_ListMovieFromJson(json);

  @override
  final int page;
  final List<Movie>? _results;
  @override
  List<Movie>? get results {
    final value = _results;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MovieResult(page: $page, results: $results)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListMovieToJson(
      this,
    );
  }
}

abstract class _ListMovie implements MovieResult {
  const factory _ListMovie(
      {required final int page, final List<Movie>? results}) = _$_ListMovie;

  factory _ListMovie.fromJson(Map<String, dynamic> json) =
      _$_ListMovie.fromJson;

  @override
  int get page;
  @override
  List<Movie>? get results;
}

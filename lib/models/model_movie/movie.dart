import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie.g.dart';
part 'movie.freezed.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required int id,
    required String title,
    required String overview,
    @JsonKey(name: "backdrop_path") required String backdropPath,
    @JsonKey(name: "poster_path") required String posterPath,
    @JsonKey(name: "release_date") required String releaseDate,
    @JsonKey(name: "vote_average") required double voteAverage,
  }) = _Movie;

  const Movie._();

  factory Movie.fromJson(Map<String, dynamic> map) => _$MovieFromJson(map);

  get length => null;
}

@freezed
class MovieResult with _$MovieResult {
  const factory MovieResult({
    required int page,
    List<Movie>? results,
    // List<MovieTrending>? object,
    // @JsonKey(name: 'total_result') required int totalResult,
    // @JsonKey(name: 'total_pages') required int totalPages,
  }) = _ListMovie;
  factory MovieResult.fromJson(Map<String, dynamic> map) =>
      _$MovieResultFromJson(map);
}

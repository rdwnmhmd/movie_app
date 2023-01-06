//////////////////////////////////////////////////BLOC///////////////////////////////////////////
import 'dart:async';
import 'dart:developer';
import 'package:arstate/arstate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/models/model_movie/movie.dart';
import 'package:movie_app/repository/movie.dart';
part 'movie_bloc.freezed.dart';
part 'movie_event.dart';
part 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  MovieBloc() : super(const _Initial()) {
    on<MovieEvent>(_onMovieEvent);
  }

  Future<void> _onMovieEvent(MovieEvent event, Emitter<MovieState> emit) async {
    await event.when(
      started: () async {},
      show: () async {
        emit(_getLoadingState());
        final ApiResult<List<Movie>> apiResult = await MovieRepository().show();
        apiResult.when(
          success: (data) async {
            // log(data.length.toString());
            emit(MovieState.loadedShow(data));
          },
          failure: (NetworkExceptions error) async {
            emit(_getErrorState(error));
          },
        );
      },
    );
  }

  MovieState _getErrorState(NetworkExceptions networkExceptions) {
    return MovieState.isError(networkExceptions);
  }

  MovieState _getLoadingState() {
    return const MovieState.isLoading();
  }
}

class MovieBlocPopular extends Bloc<MovieEvent, MovieStatePopular> {
  MovieBlocPopular() : super(const _InitialPopular()) {
    on<MovieEvent>(_onMovieEventPopular);
  }

  Future<void> _onMovieEventPopular(
      MovieEvent event, Emitter<MovieStatePopular> emit) async {
    await event.when(
      started: () async {},
      show: () async {
        emit(_getLoadingState());
        final ApiResult<List<MoviePopular>> apiResult =
            await MovieRepository().showAll();
        apiResult.when(
          success: (data) async {
            // log(data.length.toString());
            emit(MovieStatePopular.loadedShow(data));
          },
          failure: (NetworkExceptions error) async {
            emit(_getErrorState(error));
          },
        );
      },
    );
  }

  MovieStatePopular _getErrorState(NetworkExceptions networkExceptions) {
    return MovieStatePopular.isError(networkExceptions);
  }

  MovieStatePopular _getLoadingState() {
    return const MovieStatePopular.isLoading();
  }
}

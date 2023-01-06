import 'dart:developer';

import 'package:arstate/arstate.dart';
import 'package:arx/config/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/logic/bloc/movie/movie_bloc.dart';
import 'package:movie_app/logic/bloc/outlet/outlet_bloc.dart';
import 'package:movie_app/models/model_movie/movie.dart';
import 'package:movie_app/views/movie/component/myTypography.dart';
import 'package:movie_app/views/movie/component/my_colors.dart';
import 'package:movie_app/views/movie/screen/list_popular.dart';
import 'package:movie_app/views/movie/screen/list_showing.dart';
import 'package:movie_app/views/movie/widget/buttom_navigationbar.dart';
import 'package:movie_app/views/movie/widget/shimmer_movie.dart';

import 'package:flutter/material.dart';

class MovieBody extends StatelessWidget {
  const MovieBody({Key? key, required this.movieList}) : super(key: key);
  final List<Movie> movieList;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieBloc, MovieState>(
      bloc: context.read<MovieBloc>()..add(const MovieEvent.show()),
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const ShimmerMovie(),
          isError: (e) {
            return StateWidget.error(
              stateContentType: StateContentType.full,
              error: e,
              onRetry: () {
                context.read<MovieBloc>().add(const MovieEvent.show());
              },
            );
          },
          loadedShow: (movieList) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  ListShowing(movieList: movieList),
                  ListPopular(movieList: movieList)
                ],
              ),
            );
          },
        );
      },
    );
  }
}

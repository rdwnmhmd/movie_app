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
import 'package:movie_app/views/movie/widget/buttom_navigationbar.dart';
import 'package:movie_app/views/movie/widget/shimmer_movie.dart';

class ListPopular extends StatelessWidget {
  const ListPopular({
    Key? key,
  }) : super(key: key);

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
            return ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: movieList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 185,
                        width: 150,
                        // margin: EdgeInsets.only(right: ),
                        decoration: BoxDecoration(
                          color: MyColors.grey4,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://image.tmdb.org/t/p/w500/${movieList[index].posterPath}'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 150,
                            child: Text(
                              movieList[index].title,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: MyTypography.textSmall
                                  .copyWith(color: MyColors.darkPurple2),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.amber),
                              SizedBox(width: 10),
                              Text(
                                movieList[index].voteAverage.toString(),
                                style: MyTypography.textSmall
                                    .copyWith(color: Colors.black),
                              )
                            ],
                          ),
                          // SizedBox(height: 5),
                          // Row(
                          //   children: [
                          //     Container(
                          //         height: 18,
                          //         width: 61,
                          //         decoration: BoxDecoration(
                          //             borderRadius: BorderRadius.circular(8),
                          //             color: MyColors.grey4),
                          //         child: Text(
                          //           'Horror',
                          //           textAlign: TextAlign.center,
                          //         )),
                          //     SizedBox(width: 8),
                          //     Container(
                          //         height: 18,
                          //         width: 61,
                          //         decoration: BoxDecoration(
                          //             borderRadius: BorderRadius.circular(8),
                          //             color: MyColors.grey4),
                          //         child: Text(
                          //           'Horror',
                          //           textAlign: TextAlign.center,
                          //         )),
                          //   ],
                          // ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}

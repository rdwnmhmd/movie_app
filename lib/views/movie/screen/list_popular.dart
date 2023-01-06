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
    required this.movieList,
  }) : super(key: key);

  final List<Movie> movieList;

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Popular',
              style:
                  MyTypography.textMedium.copyWith(color: MyColors.darkPurple2),
            ),
            Text(
              'See All',
              style: MyTypography.textSmall.copyWith(color: MyColors.grey4),
            ),
          ],
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.all(10),
          height: 200,
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: movieList.length,
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 185,
                      width: 120,
                      margin: EdgeInsets.only(bottom: 8),
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
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          child: Text(
                            movieList[index].title,
                            // maxLines: 3,
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
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Container(
                                height: 18,
                                width: 61,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: MyColors.grey4),
                                child: Text(
                                  'Horror',
                                  textAlign: TextAlign.center,
                                )),
                            SizedBox(width: 8),
                            Container(
                                height: 18,
                                width: 61,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: MyColors.grey4),
                                child: Text(
                                  'Horror',
                                  textAlign: TextAlign.center,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ],
                );
              }),
        ),
      ],
    );
  }
}

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

import 'detail_movie.dart';

class ListShowing extends StatelessWidget {
  const ListShowing({
    Key? key,
    required this.movieList,
  }) : super(key: key);

  final List<Movie> movieList;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Now Showing',
                style: MyTypography.textMedium
                    .copyWith(color: MyColors.darkPurple2),
              ),
              Text(
                'See All',
                style: MyTypography.textSmall.copyWith(color: MyColors.grey4),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movieList.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    log('Di Klik');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailFilm(data: movieList[index]),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Constants.kRadiusL),
                        ),
                        width: 190,
                        height: 300,
                        margin: EdgeInsets.only(left: 10),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 180,
                                height: 180,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: MyColors.grey4
                                    // image: DecorationImage(
                                    //   image: NetworkImage(
                                    //       'https://image.tmdb.org/t/p/w500/${movieList[index].posterPath}'),
                                    //   fit: BoxFit.cover,
                                    // ),
                                    ),
                              ),
                              //bottom of card
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 150,
                                        child: Text(
                                          // maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          movieList[index].title,
                                          style: MyTypography.textMedium
                                              .copyWith(
                                                  color: MyColors.darkPurple2),
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(movieList[index].releaseDate),
                                      SizedBox(height: 5),
                                      Row(
                                        children: [
                                          Icon(Icons.star, color: Colors.amber),
                                          SizedBox(width: 10),
                                          Text(
                                            movieList[index]
                                                .voteAverage
                                                .toString(),
                                            style: MyTypography.textSmall
                                                .copyWith(color: Colors.black),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

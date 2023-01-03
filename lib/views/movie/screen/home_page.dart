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
            height: 200,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 1,
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
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      // SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pop',
                            maxLines: 2,
                            style: MyTypography.textSmall
                                .copyWith(color: MyColors.darkPurple2),
                          ),
                          Text('Rating'),
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
      ),
    );
  }
}

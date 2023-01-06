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
import '../../models/model_outlet/outlet.dart';
import '../bank_account/widget/bottom_sheet_edit.dart';
import '../global/widget/appbar_title_text.dart';
import 'screen/home_page.dart';
import 'screen/list_popular.dart';

class MovieWrapperRoute extends StatelessWidget {
  const MovieWrapperRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: ((context) => MovieBloc()..add(const MovieEvent.show())),
      child: const MoviePage(),
    );
  }
}

class MoviePage extends StatelessWidget {
  const MoviePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Container(color: MyColors.grey6),
      appBar: AppBar(
        iconTheme: IconThemeData(color: MyColors.darkPurple2),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          //ADD ICON BANK ACCOUNT ON APPBAR
          IconButton(
            icon: Icon(
              Icons.notifications,
            ),
            onPressed: () {},
          )
        ],
        title: const AppbarTitleText(titleText: 'FilmKu'),
      ),
      body: MovieBody(movieList: []),
      bottomNavigationBar: CustomButtomBar(),
    );
  }
}

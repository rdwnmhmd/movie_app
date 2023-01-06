import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/logic/bloc/movie/movie_bloc.dart';
import 'package:movie_app/views/movie/auth_movie.dart';
import 'package:movie_app/views/movie/movie_view.dart';

//tes commit
void main() async {
  runApp(const Myhome());
}

class Myhome extends StatelessWidget {
  const Myhome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: MultiBlocProvider(
          providers: [
            BlocProvider<MovieBloc>(
              create: (context) => MovieBloc()..add(const MovieEvent.show()),
            ),
          ],
          child: MoviePage(),
        ),
      ),
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     home: LoginPage(),
  //   );
  // }
}

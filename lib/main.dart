import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/logic/bloc/outlet/outlet_bloc.dart';
import 'package:movie_app/views/outlet/outlet_view.dart';

//tes commit
void main() async {
  runApp(const Myhome());
}

class Myhome extends StatelessWidget {
  const Myhome({Key? key}) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  //   final appRouter = AppRouter(
  //     RouteGuardToLogin: RouteGuardToLogin(),
  //   );

  //   return MaterialApp.router(
  //     routerDelegate: appRouter.delegate(),
  //     routeInformationParser: appRouter.defaultRouteParser(),
  //   );
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     home: SafeArea(
  //       child: BlocProvider(
  //         create: (context) =>
  //             BankAccountBloc()..add(const BankAccountEvent.show()),
  //         child: const BankAccountPage(),
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: MultiBlocProvider(
          providers: [
            BlocProvider<OutletBloc>(
              create: (context) => OutletBloc()..add(const OutletEvent.show()),
            ),
          ],
          child: const OutletPage(),
        ),
      ),
    );
  }
}

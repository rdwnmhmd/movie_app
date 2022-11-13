import 'package:get_it/get_it.dart';

import 'logic/bloc/authentication/auth_bloc.dart';

final locator = GetIt.instance;

void setupTheLocator() {
  locator.registerSingleton(Auth());
}

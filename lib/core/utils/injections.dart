
import 'package:flutter_web_test/core/cubits/home_cubit/header_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Cubits
  sl.registerLazySingleton<HeaderCubit>(() => HeaderCubit());

}

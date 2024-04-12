import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_test/core/cubits/home_cubit/header_cubit.dart';
import 'package:flutter_web_test/core/utils/main_method.dart';
import 'package:flutter_web_test/core/utils/page_router.dart';
import 'core/utils/injections.dart';


Future<void> main() async {
  await MainMethods.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<HeaderCubit>()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        showSemanticsDebugger: false,
        title: 'Flutter Web',
        theme: ThemeData.dark(
          useMaterial3: true,
        ),
        routerConfig: NyAppRouter.returnRouter(),
      ),
    );
  }
}

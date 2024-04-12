
import 'package:flutter/material.dart';
import 'package:flutter_web_test/ui/pages/home_page.dart';
import 'package:flutter_web_test/ui/pages/welcome_page.dart';
import 'package:go_router/go_router.dart';

class NyAppRouter {
  static GoRouter returnRouter() {
    final GoRouter router = GoRouter(
      routes: <RouteBase>[
        GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) => const WelcomePage(),
          routes: <RouteBase>[
            GoRoute(
              path: 'home',
              pageBuilder: (BuildContext context, GoRouterState state) =>
                  CustomTransitionPage<void>(
                key: state.pageKey,
                child:  HomePage(),
                transitionsBuilder: (BuildContext context,
                        Animation<double> animation,
                        Animation<double> secondaryAnimation,
                        Widget child) =>
                    FadeTransition(
                        opacity: CurveTween(curve: Curves.easeInOut)
                            .animate(animation),
                        child: child),
              ),
            ),



          ],
        ),
      ],
    );
    return router;
  }
}

import 'package:fitness_app/presentation/screens/home_screen.dart';
import 'package:fitness_app/presentation/screens/started/welcome_view.dart';
import 'package:fitness_app/services/routing_service/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import '../../presentation/screens/splash_screen.dart';
import '../../presentation/screens/started/about_view.dart';
import '../../presentation/screens/user_detail_screen.dart';
import 'routes_name.dart';

class MyRouter {
  Future<GoRouter> appRouter() async {
    final router = GoRouter(
        urlPathStrategy: UrlPathStrategy.path,
        debugLogDiagnostics: true,
        initialLocation: initialRoute,
        routes: [
          GoRoute(
            name: initialPage,
            path: initialRoute,
            pageBuilder: (context, state) {
              return CupertinoPage(
                key: state.pageKey,
                child: const SplashScreen(),
              );
            },
          ),

          GoRoute(
              name: welcomePage,
              path: welcomeRoute,
              pageBuilder: (context, state) {
                return CupertinoPage(
                  key: state.pageKey,
                  child: WelcomeView(),
                );
              }),
          GoRoute(
              name: homePage,
              path: homeRoute,
              pageBuilder: (context, state) {
                return CupertinoPage(
                  key: state.pageKey,
                  child: const HomeScreen(),
                );
              }),

          GoRoute(
              name: aboutPage,
              path: aboutRoute,
              pageBuilder: (context, state) {
                return CupertinoPage(
                  key: state.pageKey,
                  child: AboutView(),
                );
              }),
          GoRoute(
              name: userDetailPage,
              path: userDetailRoute,
              pageBuilder: (context, state) {
                final userId = state.params['userId']!;
                return CupertinoPage(
                  key: state.pageKey,
                  child: UserDetailScreen(userId: userId),
                );
              }),
        ]);
    return router;
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigasi_2006122/models/user.dart';
import 'package:navigasi_2006122/modules/home_screen/home_screen.dart';
import 'package:navigasi_2006122/modules/news_detail_screen/news_detail_screen.dart';
import 'package:navigasi_2006122/modules/splash_screen/splash_screen.dart';

class AppRoutes {
  static const String splash = "splash";
  static const String home = "home";
  static const String newsDetail = "news-detail";

  static Page _splashScreenBuilder(BuildContext context, GoRouterState state) {
    return const MaterialPage(
      child: SplashScreen(),
    );
  }

  static Page _homeScreenBuilder(BuildContext context, GoRouterState state) {
    late User user;
    if (state.extra != null && state.extra is User) {
      user = state.extra! as User;
    } else {
      user = User(
        id: 002,
        name: "BEBE",
        username: "Bebe",
        email: "bebe100@gmail.com",
        profilePhoto:
            "https://img.freepik.com/free-vector/cute-cat-gaming-cartoon_138676-2969.jpg?w=740&t=st=1680245581~exp=1680246181~hmac=f997af217494d5bc62ac72f67083639d1af8c1247c5b66b37a8b682d4c6927dd",
        phoneNumber: "0821899999999",
      );
    }
    return MaterialPage(
      child: HomeScreen(
        user: user,
      ),
    );
  }

  static Page _newsDetailScreenBuilder(
      BuildContext context, GoRouterState state) {
    return MaterialPage(
      child: NewsDetailScreen(
        id: state.params["id"]!,
      ),
    );
  }

  static final GoRouter goRouter = GoRouter(
    routes: [
      GoRoute(
        name: splash,
        path: "/splash",
        pageBuilder: _splashScreenBuilder,
      ),
      GoRoute(
        name: home,
        path: "/home",
        pageBuilder: _homeScreenBuilder,
      ),
      GoRoute(
        name: newsDetail,
        path: "/news-detail:id",
        pageBuilder: _newsDetailScreenBuilder,
      ),
    ],
    initialLocation: "/splash",
  );
}

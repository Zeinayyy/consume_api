import 'package:go_router/go_router.dart';

import 'package:flutter/material.dart';

class AppRoutes {
  static const home = "home";
  static const post = "post";
  static const addPost = "add-post";

  static Page _homePageBuilder(BuildContext context, GoRouterState state) {
    return MaterialPage(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
    ));
  }

  static GoRouter goRouter = GoRouter(
    initialLocation: "/home",
    routes: [
    GoRoute(
      name: home,
      path: "/home",
      pageBuilder: _homePageBuilder,
    )
  ]);
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:word_master/comp/catagories.dart';
import 'package:word_master/homepage.dart';

class MyAppRouter {
  static GoRouter returnRouter() {
    List<Map<String, String>> catagories = Catagories().catagories;
    GoRouter router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          pageBuilder: (context, state) =>
              const MaterialPage(child: HomePage()),
        ),
        for (Map<String, String> category in catagories)
          GoRoute(
            path: '/${category['Name']!}',
            name: category['Name']!,
            pageBuilder: (context, state) =>
                const MaterialPage(child: Placeholder()),
          ),
      ],
    );

    return router;
  }
}

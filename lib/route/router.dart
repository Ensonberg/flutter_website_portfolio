import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_portfolio_website/pages/project.dart';
import 'package:my_portfolio_website/route/routes.dart';

import '../pages/home/home.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Home();
      },
      routes: <RouteBase>[
        GoRoute(
          path: Routes.PROJECTS,
          name: Routes.PROJECTS,
          builder: (BuildContext context, GoRouterState state) {
            return const Project();
          },
        ),
      ],
    ),
  ],
);

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_portfolio_website/pages/about_me/about_me.dart';
import 'package:my_portfolio_website/pages/contacts/contacts.dart';
import 'package:my_portfolio_website/pages/project/project.dart';
import 'package:my_portfolio_website/route/routes.dart';

import '../pages/home/home.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  observers: [
    RouteObserver(),
  ],
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      name: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Home();
      },
    ),
    GoRoute(
      path: Routes.PROJECTS,
      name: Routes.PROJECTS,
      builder: (BuildContext context, GoRouterState state) {
        return const Projects();
      },
    ),
    GoRoute(
      path: Routes.ABOUTME,
      name: Routes.ABOUTME,
      builder: (BuildContext context, GoRouterState state) {
        return const AboutMe();
      },
    ),
    GoRoute(
      path: Routes.CONTACTME,
      name: Routes.CONTACTME,
      builder: (BuildContext context, GoRouterState state) {
        return const Contacts();
      },
    ),
  ],
);

class GoRouterObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    print('Pushed route: ${route.str}'); //name comes back null
    if (previousRoute != null) {
      print('previousRoute: ${previousRoute.str}');
    }
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    print('Poped route: ${route.str}'); //name comes back null
    if (previousRoute != null) {
      print('previousRoute: ${previousRoute.str}');
    }
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    print('Removed route: ${route.str}'); //name comes back null
    if (previousRoute != null) {
      print('previousRoute: ${previousRoute.str}');
    }
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    print('Replaced newRoute: ${newRoute!.str}');
    print('oldRoute: ${oldRoute!.str}'); //n//name comes back null
  }
}

extension on Route<dynamic> {
  String get str => 'route(${settings.name}: ${settings.arguments})';
}

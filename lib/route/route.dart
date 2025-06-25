import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sahithyolsav/helper/constants.dart';
import 'package:sahithyolsav/route/route_list.dart';
import 'package:sahithyolsav/widget/no_route_screen.dart';
import 'package:sahithyolsav/widget/ssf_placeholder.dart';

final GoRouter routeX = GoRouter(initialLocation: "/", redirectLimit: 3, errorBuilder: (context, state) => const NoRouteScreen(), navigatorKey: ConstanceData.navigatorKey, routes: buildRoutes());

List<RouteBase> buildRoutes() {
  return [
    GoRoute(
      path: '/',
      pageBuilder: (BuildContext context, GoRouterState state) {
        return CustomTransitionPage(
          key: state.pageKey,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: CurveTween(curve: Curves.easeInOutSine).animate(animation),
              child: child,
            );
          },
          child: const SsfPlaceHolder(),
        );
      },
      routes: [...mainRoutes()],
    ),
  ];
}

List<GoRoute> mainRoutes() {
  List<GoRoute> mainRouteX = [];
  for (var route in mainRouteList) {
    if (route.routeName != null && route.widget != null) {
      mainRouteX.add(
        GoRoute(
          path: route.routeName!,
          name: route.routeName,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return CustomTransitionPage(
              key: state.pageKey,
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity: CurveTween(curve: Curves.easeInOutSine).animate(animation),
                  child: child,
                );
              },
              child: route.widget!,
            );
          },
        ),
      );
    }
  }
  return mainRouteX;
}

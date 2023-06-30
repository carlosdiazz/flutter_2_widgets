import 'package:flutter/material.dart';
import 'package:flutter_2_widgets/presentation/screens/screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: "/",
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      builder: (BuildContext context, GoRouterState state) {
        return const ButtonsScreen();
      },
    ),
    GoRoute(
      path: '/cards',
      name: CardsScreen.name,
      builder: (BuildContext context, GoRouterState state) {
        return const CardsScreen();
      },
    ),
    GoRoute(
      path: '/animated',
      name: AnimatedScreen.name,
      builder: (BuildContext context, GoRouterState state) {
        return const AnimatedScreen();
      },
    ),
    GoRoute(
      path: '/apptutotial',
      name: AppTutotialScreen.name,
      builder: (BuildContext context, GoRouterState state) {
        return const AppTutotialScreen();
      },
    ),
    GoRoute(
      path: '/infinite',
      name: InfiniteScrollScreen.name,
      builder: (BuildContext context, GoRouterState state) {
        return const InfiniteScrollScreen();
      },
    ),
    GoRoute(
      path: '/progress',
      name: ProgreesScreen.name,
      builder: (BuildContext context, GoRouterState state) {
        return const ProgreesScreen();
      },
    ),
    GoRoute(
      path: '/snack',
      name: SnackBarScreen.name,
      builder: (BuildContext context, GoRouterState state) {
        return const SnackBarScreen();
      },
    ),
    GoRoute(
      path: '/ui',
      name: UiControlsScreen.name,
      builder: (BuildContext context, GoRouterState state) {
        return const UiControlsScreen();
      },
    ),
  ],
);

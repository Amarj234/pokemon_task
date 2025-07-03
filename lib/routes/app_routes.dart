import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../data/model/pokemon_entity.dart';
import '../screen/pokemon_detail_page.dart';
import '../screen/pokemon_list_page.dart';
import '../screen/splash_screen.dart';


class AppRoutes {


  static const String splash = '/splash';
  static const String home = '/';
  static const String details = '/details';


 static final router = GoRouter(
  initialLocation: AppRoutes.splash,
  routes: [
    GoRoute(
      path: AppRoutes.splash,
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: AppRoutes.home,
      builder: (context, state) => const PokemonListPage(),
    ),
    GoRoute(
      path: AppRoutes.details,
      builder: (context, state) {
        final args = state.extra as PokemonDataEntity?;
      
        if (args == null) {
          return Scaffold(
            body: Center(child: Text('Invalid arguments for Details Page')),
          );
        }
        return PokemonDetailPage(data: args);
      },
    ),
  ],
  errorBuilder: (context, state) =>
      Scaffold(body: Center(child: Text(state.error.toString()))),
);

}


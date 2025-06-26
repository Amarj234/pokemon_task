import 'package:flutter/material.dart';

import '../data/model/pokemon_entity.dart';
import '../screen/pokemon_detail_page.dart';
import '../screen/pokemon_list_page.dart';
import '../screen/splash_screen.dart';

class RoutePaths {
  static const splash = '/splash';
  static const home = '/';
  static const details = '/details';
}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.splash:
        return MaterialPageRoute(builder: (_) => const SplashPage());

      case RoutePaths.home:
        return MaterialPageRoute(builder: (_) => const PokemonListPage());

      case RoutePaths.details:
        if (settings.arguments is PokemonDetailArguments) {
          final args = settings.arguments as PokemonDetailArguments;
          return MaterialPageRoute(
            builder: (_) => PokemonDetailPage(data: args.cardData),
          );
        }
        return _errorRoute('Invalid arguments for Details Page');

      default:
        return _errorRoute('Route not defined');
    }
  }

  static Route<dynamic> _errorRoute(String message) {
    return MaterialPageRoute(
      builder: (_) => Scaffold(body: Center(child: Text(message))),
    );
  }
}

class PokemonDetailArguments {
  final PokemonDataEntity cardData;

  PokemonDetailArguments({required this.cardData});
}

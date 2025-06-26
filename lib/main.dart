import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_card_list/routes/app_routes.dart';
import 'package:pokemon_card_list/screen/bloc/pokemon_bloc.dart';
import 'package:pokemon_card_list/screen/bloc/pokemon_event.dart';

import 'core/injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  init(); // Initialize dependency injection
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PokemonBloc>(
          create: (context) =>
              sl<PokemonBloc>()..add(const PokemonEvent.fetchCards(1)),
        ),
      ],
      child: MaterialApp(
        title: 'Pokémon Card List',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: RoutePaths.splash,
        onGenerateRoute: AppRouter.generateRoute,
      ),
    );
  }
}

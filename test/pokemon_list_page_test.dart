import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:pokemon_card_list/screen/pokemon_list_page.dart';
import 'package:pokemon_card_list/screen/bloc/pokemon_bloc.dart';
import 'package:pokemon_card_list/screen/bloc/pokemon_event.dart';

import 'package:pokemon_card_list/data/repositories/pokemon_repository_impl.dart';

void main() {
  testWidgets('renders a Pokémon card on screen', (WidgetTester tester) async {
    // Setup Dio and Adapter
    final dio = Dio(BaseOptions(baseUrl: 'https://api.pokemontcg.io/v2/'));
    final dioAdapter = DioAdapter(dio: dio);

    final mockResponse = {
      "data": [
        {
          "id": "1",
          "name": "Pikachu",
          "images": {
            "small": "https://example.com/pikachu.jpg",
            "large": "https://example.com/pikachu-large.jpg",
          },
          "attacks": [],
          "types": ["Electric"],
        },
      ],
    };

    // Match exact query path if full URL path is used
    dioAdapter.onGet(
      'cards?page=1&pageSize=10',
      (server) => server.reply(200, mockResponse),
    );

    // Create real ApiService and Repo

    final repository = PokemonRepositoryImpl();
    final bloc = PokemonBloc(repository: repository);

    // Dispatch fetch event manually
    bloc.add(const PokemonEvent.fetchCards(1));

    await tester.pumpWidget(
      MaterialApp(
        home: BlocProvider<PokemonBloc>.value(
          value: bloc,
          child: const PokemonListPage(),
        ),
      ),
    );

    // Let UI and BLoC settle
    await tester.pumpAndSettle(const Duration(milliseconds: 500));

    expect(find.text('Pokémon Cards'), findsOneWidget);
  });
}

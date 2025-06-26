import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:pokemon_card_list/data/model/pokemon_entity.dart';
import 'package:pokemon_card_list/screen/pokemon_detail_page.dart';

void main() {
  testWidgets('PokemonDetailPage displays only static text', (
    WidgetTester tester,
  ) async {
    // Mock data
    final mockPokemon = PokemonDataEntity(
      '001', // id
      'Bulbasaur', // name
      'Pokémon', // supertype
      ['Basic'], // subtypes
      '10', // level
      '60', // hp
      ['Grass'], // types
      null, // evolvesFrom
      null, // abilities (you passed attacks here by mistake)
      [
        // attacks
        PokemonDataAttacksEntity(
          'Vine Whip',
          ['Grass'],
          1,
          '30',
          'A strong whip attack',
        ),
      ],
      [], // weaknesses
      [], // resistances
      [], // retreatCost
      1, // convertedRetreatCost
      PokemonDataSetEntity(
        'xy1',
        'XY Base Set',
        'XY',
        146,
        146,
        PokemonDataSetLegalitiesEntity('Unlimited'),
        'XY',
        '2014/02/05',
        '2021/01/01',
        PokemonDataSetImagesEntity(
          'https://example.com/symbol.png',
          'https://example.com/logo.png',
        ),
      ), // set
      '1', // number
      'Ken Sugimori', // artist
      'Common', // rarity
      'A seed Pokémon', // flavorText
      [1], // nationalPokedexNumbers
      null, // legalities
      PokemonDataImagesEntity(
        'https://example.com/small.jpg',
        'https://example.com/large.jpg',
      ), // images
      null, // tcgplayer
      null, // cardmarket
    );

    await tester.pumpWidget(
      MaterialApp(home: PokemonDetailPage(data: mockPokemon)),
    );

    await tester.pumpAndSettle();

    // ✅ Only check visible text values
    expect(find.text('Bulbasaur'), findsOneWidget);
    expect(find.text('Set: '), findsOneWidget);
    expect(find.text('Base Set'), findsOneWidget);
    expect(find.text('Types: '), findsOneWidget);
    expect(find.text('Grass'), findsOneWidget);
    expect(find.text('Weaknesses: '), findsOneWidget);
    expect(find.text('Fire'), findsOneWidget);
    expect(find.text('Artist: '), findsOneWidget);
    expect(find.text('Ken Sugimori'), findsOneWidget);
    expect(find.text('Attacks:'), findsOneWidget);
    expect(find.text('Vine Whip'), findsOneWidget);
    expect(find.text('A strong whip attack'), findsOneWidget);
    expect(find.text('Damage: 30'), findsOneWidget);
    expect(find.text('Grass'), findsOneWidget); // cost
  });
}

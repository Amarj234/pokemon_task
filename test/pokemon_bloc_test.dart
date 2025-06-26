import 'package:flutter_test/flutter_test.dart';
import 'package:pokemon_card_list/screen/bloc/pokemon_bloc.dart';
import 'package:pokemon_card_list/screen/bloc/pokemon_event.dart';
import 'package:pokemon_card_list/screen/bloc/pokemon_state.dart';
import 'package:pokemon_card_list/utils/load_state.dart';
import 'package:pokemon_card_list/data/model/pokemon_entity.dart';
import 'package:pokemon_card_list/data/repositories/pokemon_repository.dart';

class MockPokemonRepository implements PokemonRepository {
  @override
  Future<PokemonEntity?> getCards(int index) async {
    return PokemonEntity(
      [
        PokemonDataEntity(
          "xy7-54", // id
          "Pikachu", // name
          "Pokémon", // supertype
          ["Basic"], // subtypes
          "12", // level
          "60", // hp
          ["Electric"], // types
          "Pichu", // evolvesFrom
          null, // abilities
          null, // attacks
          null, // weaknesses
          null, // resistances
          null, // retreatCost
          1, // convertedRetreatCost
          null, // set
          "54", // number
          "Ken Sugimori", // artist
          "Rare", // rarity
          "Mouse Pokémon", // flavorText
          [25], // nationalPokedexNumbers
          null, // legalities
          null, // images
          null, // tcgplayer
          null, // cardmarket
        ),
      ],
      1, // page
      1, // pageSize
      1, // count
      1, // totalCount
    );
  }

  @override
  Future<PokemonEntity?> searchCards(String name) async {
    return getCards(0);
  }
}

void main() {
  group('PokemonBloc Test', () {
    late PokemonBloc bloc;
    late MockPokemonRepository mockRepository;

    setUp(() {
      mockRepository = MockPokemonRepository();
      bloc = PokemonBloc(repository: mockRepository);
    });

    test('should emit Loading and Success when FetchCards is added', () async {
      final List<PokemonState> emittedStates = [];

      final subscription = bloc.stream.listen(emittedStates.add);

      bloc.add(FetchCards(1));

      // wait for async event processing
      await Future.delayed(Duration(milliseconds: 500));

      expect(emittedStates.length, 2);
      expect(emittedStates[0].isLoading, LoadState.Loading);
      expect(emittedStates[1].isLoading, LoadState.Success);
      expect(emittedStates[1].items?.data?.first?.name, "Pikachu");

      await subscription.cancel();
    });
  });
}

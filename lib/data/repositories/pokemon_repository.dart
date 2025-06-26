import '../model/pokemon_entity.dart';

abstract class PokemonRepository {
  Future<PokemonEntity?> getCards(int page);
  Future<PokemonEntity?> searchCards(String text);
}

import 'package:dio/dio.dart';
import '../model/pokemon_entity.dart';
import '../service/api_service.dart';
import 'pokemon_repository.dart';

class PokemonRepositoryImpl implements PokemonRepository {


  @override
  Future<PokemonEntity?> getCards(int page) async {
    final response = await sl<ApiService>().get('cards?page=$page&pageSize=10');
    print(response.data);
    if (response.statusCode == 200) {
      var data = response.data;
      return PokemonEntity.fromJson(data);
    }
    return null;
  }

  @override
  Future<PokemonEntity?> searchCards(String text) async {
    final response = await sl<ApiService>().get('cards?q=set.name:$text');
    print(response.data);
    if (response.statusCode == 200) {
      var data = response.data;
      return PokemonEntity.fromJson(data);
    }
    return null;
  }
}

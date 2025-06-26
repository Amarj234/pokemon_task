import 'package:freezed_annotation/freezed_annotation.dart';

part "pokemon_event.freezed.dart";

@freezed
sealed class PokemonEvent {
  const PokemonEvent._();

  const factory PokemonEvent.fetchCards(int index) = FetchCards;

  const factory PokemonEvent.search(String text) = Search;
  const factory PokemonEvent.searchShow(bool val) = SearchShow;
}

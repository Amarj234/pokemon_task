import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/pokemon_entity.dart';
import '../../utils/load_state.dart';

part 'pokemon_state.freezed.dart';

// @freezed
// sealed class PokemonState {
//   const PokemonState._();
//
//   const factory PokemonState.initial() = _Initial;
//   const factory PokemonState.loading() = _Loading;
//   const factory PokemonState.loaded(List<String> items) = _Loaded;
//   const factory PokemonState.error(String message) = _Error;
// }

// another way to define BlocState this is my personal recommendation

@freezed
sealed class PokemonState with _$PokemonState {
  const PokemonState._();
  factory PokemonState.initial() => _PokemonState();

  factory PokemonState({
    PokemonEntity? items,
    @Default(LoadState.Initial) LoadState isLoading,
    @Default("") String errorMessage,
    @Default(false) bool isPagination,
    @Default(false) bool isSearch,
  }) = _PokemonState;
}

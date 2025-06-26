import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_card_list/screen/bloc/pokemon_event.dart';
import 'package:pokemon_card_list/screen/bloc/pokemon_state.dart';
import 'package:pokemon_card_list/utils/load_state.dart';

import '../../data/model/pokemon_entity.dart';
import '../../data/repositories/pokemon_repository.dart';

class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  PokemonEntity? pokemonEntity;
  final PokemonRepository repository;
  PokemonBloc({required this.repository}) : super(PokemonState.initial()) {
    on<FetchCards>(_loadFunction);
    on<SearchShow>(_searchShow);
    on<Search>(_search);
  }
  Future<void> _loadFunction(
    FetchCards event,
    Emitter<PokemonState> emit,
  ) async {
    try {
      final isFirstLoad = pokemonEntity == null;

      emit(
        state.copyWith(
          isLoading: isFirstLoad ? LoadState.Loading : LoadState.Success,
          isPagination: !isFirstLoad,
        ),
      );

      final newCards = await repository.getCards(event.index);

      if (newCards?.data != null && newCards!.data!.isNotEmpty) {
        if (isFirstLoad) {
          pokemonEntity = newCards;
        } else {
          pokemonEntity?.data?.addAll(newCards.data!);
        }

        emit(
          state.copyWith(
            items: pokemonEntity,
            isLoading: LoadState.Success,
            isPagination: false,
          ),
        );
      } else {
        emit(state.copyWith(isLoading: LoadState.Success, isPagination: false));
      }
    } catch (e) {
      emit(
        state.copyWith(isLoading: LoadState.Error, errorMessage: e.toString()),
      );
    }
  }

  _searchShow(SearchShow event, Emitter<PokemonState> emit) {
    emit(state.copyWith(isSearch: event.val));
  }

  _search(Search event, Emitter<PokemonState> emit) async {
    try {
      emit(state.copyWith(isLoading: LoadState.Loading, isPagination: false));
      if (event.text.isNotEmpty || event.text != "") {
        final seaechCards = await repository.searchCards(event.text);
        if (seaechCards != null) {
          emit(
            state.copyWith(items: seaechCards, isLoading: LoadState.Success),
          );
        } else {
          emit(state.copyWith(items: null, isLoading: LoadState.Success));
        }
      } else {
        emit(
          state.copyWith(
            items: pokemonEntity,
            isLoading: LoadState.Success,
            isPagination: false,
          ),
        );
      }
    } catch (e) {
      emit(
        state.copyWith(isLoading: LoadState.Error, errorMessage: e.toString()),
      );
    }
  }
}

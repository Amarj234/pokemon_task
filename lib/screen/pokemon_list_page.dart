import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shimmer/shimmer.dart';

import '../utils/load_state.dart';
import '../data/model/pokemon_entity.dart';
import '../routes/app_routes.dart';
import 'bloc/pokemon_bloc.dart';
import 'bloc/pokemon_event.dart';
import 'bloc/pokemon_state.dart';

class PokemonListPage extends StatefulWidget {
  const PokemonListPage({super.key});

  @override
  State<PokemonListPage> createState() => _PokemonListPageState();
}

class _PokemonListPageState extends State<PokemonListPage> {
  final ScrollController _scrollController = ScrollController();
  int _currentPage = 1;

  @override
  void initState() {
    super.initState();
    _loadInitialData();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _loadMore();
      }
    });
  }

  void _loadInitialData() {
    context.read<PokemonBloc>().add(PokemonEvent.fetchCards(_currentPage));
  }

  void _loadMore() {
    _currentPage++;
    context.read<PokemonBloc>().add(PokemonEvent.fetchCards(_currentPage));
  }

  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: BlocBuilder<PokemonBloc, PokemonState>(
          buildWhen: (oldVal, newVal) => oldVal.isSearch != newVal.isSearch,
          builder: (context, state) {
            return AppBar(
              backgroundColor: Colors.yellowAccent,
              automaticallyImplyLeading: false,
              title: state.isSearch
                  ? TextField(
                      controller: _searchController,
                      autofocus: true,
                      decoration: const InputDecoration(
                        hintText: 'Search Pokémon...',
                        border: InputBorder.none,
                      ),
                      onChanged: (query) {
                        context.read<PokemonBloc>().add(
                          PokemonEvent.search(query),
                        );
                      },
                    )
                  : const Text('Pokémon Cards'),
              actions: [
                IconButton(
                  icon: Icon(state.isSearch ? Icons.close : Icons.search),
                  onPressed: () {
                    if (state.isSearch) _searchController.clear();
                    final provider = context.read<PokemonBloc>();
                    provider.add(PokemonEvent.searchShow(!state.isSearch));
                    provider.add(PokemonEvent.search(_searchController.text));
                  },
                ),
              ],
            );
          },
        ),
      ),

      body: BlocBuilder<PokemonBloc, PokemonState>(
        // buildWhen: (oldData, newData) => oldData.items != newData.items,
        builder: (context, state) {
          switch (state.isLoading) {
            case LoadState.Initial:
              return const Center(child: Text("Initializing..."));

            case LoadState.Loading:
              return const Center(child: CircularProgressIndicator());

            case LoadState.Success:
              return state.items != null && state.items!.data!.isNotEmpty
                  ? Column(
                      children: [
                        Expanded(child: _buildGrid(state.items?.data ?? [])),
                        if (state.isPagination) CircularProgressIndicator(),
                      ],
                    )
                  : Center(child: Text("No data founds"));

            case LoadState.Error:
              return Center(
                child: Text(
                  state.errorMessage,
                  style: const TextStyle(color: Colors.red),
                ),
              );
          }
        },
      ),
    );
  }

  Widget _buildGrid(List<PokemonDataEntity?>? cards) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        controller: _scrollController,
        itemCount: cards?.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2x2 Grid
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          final card = cards?[index];
          return GestureDetector(
            onTap: () {
              print(card?.attacks);
              Navigator.pushNamed(
                context,
                RoutePaths.details,
                arguments: PokemonDetailArguments(cardData: card!),
              );
            },
            child: Card(
              color: Colors.yellowAccent,
              elevation: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: CachedNetworkImage(
                        imageUrl: card?.images?.small ?? '',
                        fit: BoxFit.cover,
                        placeholder: (context, url) => Shimmer.fromColors(
                          baseColor: Colors.grey.shade300,
                          highlightColor: Colors.grey.shade100,
                          child: Container(color: Colors.white),
                        ),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      card?.name ?? "",
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

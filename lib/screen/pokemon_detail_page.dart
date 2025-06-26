import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shimmer/shimmer.dart';

import '../data/model/pokemon_entity.dart';

class PokemonDetailPage extends StatelessWidget {
  final PokemonDataEntity data;

  const PokemonDetailPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final imageUrl = data.images?.large;
    final name = data.name ?? 'Unknown';
    final attacks = data.attacks ?? [];
    final set = data.set;
    final types = data.types ?? [];
    final weaknesses = data.weaknesses ?? [];
    final artist = data.artist ?? 'Unknown';
    for (var atk in attacks) print(atk);
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: imageUrl ?? "",
                fit: BoxFit.cover,
                placeholder: (context, url) => SizedBox(
                  width: MediaQuery.of(context).size.width - 40,
                  height: 500,
                  child: Shimmer.fromColors(
                    baseColor: Colors.grey.shade300,
                    highlightColor: Colors.grey.shade100,
                    child: Container(color: Colors.white),
                  ),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            const SizedBox(height: 20),
            _infoRowMap('Set', set!),
            _infoRow('Types', types.isEmpty ? 'None' : types.join(', ')),
            _infoRow(
              'Weaknesses',
              weaknesses.isEmpty ? 'None' : weaknesses.join(', '),
            ),
            _infoRow('Artist', artist),
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Attacks:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            const SizedBox(height: 8),
            if (attacks.isEmpty) const Text('No attacks available'),

            for (var atk in attacks)
              Column(
                children: [
                  ListTile(
                    title: Text(atk?.name ?? 'Unknown'),
                    subtitle: Text(atk?.text ?? 'No description'),
                    trailing: Text('Damage: ${atk?.damage ?? '--'}'),
                  ),

                  if (atk!.cost!.isEmpty) const Text('No Cost available'),
                  for (var cost in atk.cost!)
                    ListTile(title: Text(cost ?? 'Unknown')),
                ],
              ),
          ],
        ),
      ),
    );
  }

  Widget _infoRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Text('$title: ', style: const TextStyle(fontWeight: FontWeight.bold)),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }

  Widget _infoRowMap(String title, PokemonDataSetEntity value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Text('$title: ', style: const TextStyle(fontWeight: FontWeight.bold)),

          Expanded(child: Text(value.name!)),
        ],
      ),
    );
  }
}

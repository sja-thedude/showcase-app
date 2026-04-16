import 'package:flutter/material.dart';
import '../models/item.dart';
import '../widgets/item_card.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Item> items;
  final Function(Item) onFavoriteToggle;

  const FavoritesScreen({
    super.key,
    required this.items,
    required this.onFavoriteToggle,
  });

  @override
  Widget build(BuildContext context) {
    final favorites = items.where((item) => item.isFavorite).toList();

    if (favorites.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.favorite_border, size: 64, color: Colors.grey[400]),
            const SizedBox(height: 16),
            Text(
              'No favorites yet',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Colors.grey[500]),
            ),
            const SizedBox(height: 8),
            Text(
              'Tap the heart icon on items to add them here',
              style: TextStyle(color: Colors.grey[400]),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: favorites.length,
      itemBuilder: (context, index) {
        final item = favorites[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: ItemCard(
            item: item,
            onFavoriteToggle: () => onFavoriteToggle(item),
          ),
        );
      },
    );
  }
}

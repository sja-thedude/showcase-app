import 'package:flutter/material.dart';
import '../models/item.dart';
import '../widgets/item_card.dart';

class HomeScreen extends StatelessWidget {
  final List<Item> items;
  final Function(Item) onFavoriteToggle;

  const HomeScreen({
    super.key,
    required this.items,
    required this.onFavoriteToggle,
  });

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.inbox_outlined, size: 64, color: Colors.grey[400]),
            const SizedBox(height: 16),
            Text(
              'No items yet',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Colors.grey[500]),
            ),
            const SizedBox(height: 8),
            Text(
              'Add items from the Admin screen',
              style: TextStyle(color: Colors.grey[400]),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
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

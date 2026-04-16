import '../models/item.dart';

List<Item> getSampleItems() {
  return [
    Item(
      id: '1',
      title: 'Mountain Retreat',
      description: 'A peaceful getaway nestled in the mountains with stunning views.',
      imageUrl: 'https://picsum.photos/seed/mountain/400/300',
      category: 'Travel',
    ),
    Item(
      id: '2',
      title: 'Urban Coffee Shop',
      description: 'Discover the best artisan coffee in the heart of the city.',
      imageUrl: 'https://picsum.photos/seed/coffee/400/300',
      category: 'Food',
    ),
    Item(
      id: '3',
      title: 'Sunset Beach',
      description: 'Golden hour at its finest — relax and unwind by the shore.',
      imageUrl: 'https://picsum.photos/seed/beach/400/300',
      category: 'Travel',
    ),
    Item(
      id: '4',
      title: 'Tech Workspace',
      description: 'A modern workspace designed for productivity and creativity.',
      imageUrl: 'https://picsum.photos/seed/workspace/400/300',
      category: 'Lifestyle',
    ),
    Item(
      id: '5',
      title: 'Gourmet Pasta',
      description: 'Handmade pasta with fresh ingredients and rich flavors.',
      imageUrl: 'https://picsum.photos/seed/pasta/400/300',
      category: 'Food',
    ),
    Item(
      id: '6',
      title: 'Night City Lights',
      description: 'The city comes alive at night with vibrant neon lights.',
      imageUrl: 'https://picsum.photos/seed/city/400/300',
      category: 'Travel',
    ),
    Item(
      id: '7',
      title: 'Yoga & Wellness',
      description: 'Find your inner peace with guided yoga and meditation.',
      imageUrl: 'https://picsum.photos/seed/yoga/400/300',
      category: 'Lifestyle',
    ),
    Item(
      id: '8',
      title: 'Sushi Platter',
      description: 'Fresh sushi rolls crafted by expert chefs.',
      imageUrl: 'https://picsum.photos/seed/sushi/400/300',
      category: 'Food',
    ),
  ];
}

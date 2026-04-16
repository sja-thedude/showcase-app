import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'models/item.dart';
import 'data/sample_data.dart';
import 'screens/home_screen.dart';
import 'screens/favorites_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/admin_screen.dart';

void main() {
  runApp(const ShowcaseApp());
}

class ShowcaseApp extends StatelessWidget {
  const ShowcaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Showcase App',
      debugShowCheckedModeBanner: false,
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
          PointerDeviceKind.trackpad,
        },
      ),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      home: const MainNavigation(),
    );
  }
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;
  late List<Item> _items;

  @override
  void initState() {
    super.initState();
    _items = getSampleItems();
  }

  void _toggleFavorite(Item item) {
    setState(() {
      item.isFavorite = !item.isFavorite;
    });
  }

  void _addItem(Item item) {
    setState(() {
      _items.add(item);
    });
  }

  void _removeItem(Item item) {
    setState(() {
      _items.remove(item);
    });
  }

  static const _titles = ['Home', 'Favorites', 'Profile', 'Admin'];

  @override
  Widget build(BuildContext context) {
    final screens = [
      HomeScreen(items: _items, onFavoriteToggle: _toggleFavorite),
      FavoritesScreen(items: _items, onFavoriteToggle: _toggleFavorite),
      ProfileScreen(items: _items),
      AdminScreen(
        items: _items,
        onAddItem: _addItem,
        onRemoveItem: _removeItem,
        onFavoriteToggle: _toggleFavorite,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_currentIndex]),
        centerTitle: true,
        elevation: 0,
      ),
      body: screens[_currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) {
          setState(() => _currentIndex = index);
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite_outline),
            selectedIcon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'Profile',
          ),
          NavigationDestination(
            icon: Icon(Icons.admin_panel_settings_outlined),
            selectedIcon: Icon(Icons.admin_panel_settings),
            label: 'Admin',
          ),
        ],
      ),
    );
  }
}

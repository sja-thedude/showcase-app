# Showcase App - Flutter

## Overview
Showcase App is a **Flutter-based mobile app** built to demonstrate the ability to create modern, responsive, and feature-rich applications.
This MVP focuses on UI, navigation, and basic interactivity, and is **fully extendable**.

## Features (MVP)
- Modern Material 3 UI with Flutter widgets
- **Home screen** — Scrollable list of item cards with images, categories, and descriptions
- **Favorites screen** — View and manage liked items
- **Profile screen** — Mock user info with stats (items count, favorites, categories)
- **Admin screen** — Add new items (with title, description, category) and remove existing ones
- Bottom navigation bar across all 4 screens
- Like/unlike items from any screen via heart icon

## Screenshots
> Run the app locally to see it in action.

## Tech Stack
- Flutter & Dart
- Material 3 design system
- setState for state management

## Project Structure
```
lib/
├── main.dart              # App entry point & navigation
├── data/
│   └── sample_data.dart   # Mock item data
├── models/
│   ├── item.dart          # Item model
│   └── user.dart          # User model (mock)
├── screens/
│   ├── home_screen.dart       # Home — item list
│   ├── favorites_screen.dart  # Favorites — liked items
│   ├── profile_screen.dart    # Profile — user info & stats
│   └── admin_screen.dart      # Admin — add/remove items
└── widgets/
    └── item_card.dart     # Reusable item card widget
```

## Getting Started

### Prerequisites
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (>= 3.1.5)
- A connected device or emulator

### Installation
```bash
# Clone the repo
git clone https://github.com/sja-thedude/showcase-app.git

# Navigate into the directory
cd showcase-app

# Get dependencies
flutter pub get

# Run the app
flutter run
```

### Run on specific platforms
```bash
flutter run -d chrome    # Web
flutter run -d macos     # macOS desktop
flutter run -d ios       # iOS simulator
flutter run -d android   # Android emulator
```

## Usage
- **Home** — Browse items, tap the heart to favorite
- **Favorites** — See all your liked items in one place
- **Profile** — View mock user info and stats
- **Admin** — Tap "Add Item" to create new items, or "Remove" to delete

## Future Enhancements
- Real-time database integration (Firebase / Supabase)
- Push notifications
- Payments integration
- Animations and transitions
- Advanced state management (Provider / Riverpod)
- Search and filtering
- Dark mode support

## Resources
- [Flutter documentation](https://docs.flutter.dev/)
- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

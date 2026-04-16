import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:showcase_app_flutter/main.dart';

void main() {
  testWidgets('App launches and shows Home screen', (WidgetTester tester) async {
    await tester.pumpWidget(const ShowcaseApp());

    expect(find.text('Home'), findsWidgets);
    expect(find.text('Favorites'), findsOneWidget);
    expect(find.text('Profile'), findsOneWidget);
    expect(find.text('Admin'), findsOneWidget);
  });

  testWidgets('Bottom navigation switches screens', (WidgetTester tester) async {
    await tester.pumpWidget(const ShowcaseApp());

    await tester.tap(find.text('Favorites'));
    await tester.pumpAndSettle();

    expect(find.text('No favorites yet'), findsOneWidget);
  });
}

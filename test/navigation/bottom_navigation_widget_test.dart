import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ureport_app/main.dart' as ureport_app;

Finder findBottomNavigationIcon(IconData icon) {
  return find.descendant(
      of: find.byType(BottomNavigationBar), matching: find.byIcon(icon));
}

void main() {
  // a group of widget tests for the App bar and bottom navigation bar
  group('App Bar', () {
    testWidgets(
        'Bottom Navigation Bar icons and text validation with tab-pressing validation',
        (WidgetTester tester) async {
      ureport_app.main();
      await tester.pump();

      await tester.tap(findBottomNavigationIcon(Icons.chat));
      expect(findBottomNavigationIcon(Icons.chat), findsOneWidget);

      await tester.tap(findBottomNavigationIcon(Icons.equalizer));
      await tester.pumpAndSettle();
      expect(find.text('Opinions'), findsOneWidget);
      expect(findBottomNavigationIcon(Icons.equalizer), findsOneWidget);
    });
  });
}

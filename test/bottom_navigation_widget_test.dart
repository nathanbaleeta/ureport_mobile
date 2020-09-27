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
    testWidgets('validate top bar widget text', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: Text('U-Report'),
        ),
      ));
      expect(find.text('U-Report'), findsOneWidget);
    });

    testWidgets('validate color for app bar', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.grey[50],
        ),
      ));

      expect((tester.widget(find.byType(Material)) as Material).color,
          Colors.grey[50]);
    });

    testWidgets(
        'Bottom Navigation Bar icons and text validation with tab-pressing validation',
        (WidgetTester tester) async {
      ureport_app.main();
      await tester.pump();

      await tester.tap(findBottomNavigationIcon(Icons.chat));
      await tester.pumpAndSettle();
      expect(find.text('Stories'), findsOneWidget);
      expect(findBottomNavigationIcon(Icons.chat), findsOneWidget);

      await tester.tap(findBottomNavigationIcon(Icons.equalizer));
      await tester.pumpAndSettle();
      expect(find.text('Poll'), findsOneWidget);
      expect(findBottomNavigationIcon(Icons.equalizer), findsOneWidget);
    });
  });
}

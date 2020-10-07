import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ureport_app/stories/StoryListView.dart';
import 'package:ureport_app/main.dart' as ureport_app;

/* TODO:
 * - Find entire storyListView
 * - See that storylistview loads properly
 * - Find dropdown menu
 */


Finder findBottomNavigationIcon(IconData icon) {
  return find.descendant(
      of: find.byType(BottomNavigationBar), matching: find.byIcon(icon));
}

void main() {
  group('Story List View', () {
    testWidgets('validate list view appears', (WidgetTester tester) async {

      ureport_app.main();
      await tester.pump();

      await tester.tap(findBottomNavigationIcon(Icons.chat));
      await tester.pumpAndSettle();
      expect(StoryListView, findsOneWidget);

    });

  });
}



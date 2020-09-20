import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

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
  });
}

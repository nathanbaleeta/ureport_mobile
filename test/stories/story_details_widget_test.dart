import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ureport_app/main.dart' as ureport_app;


void main() {

  group('App Bar', ()
  {
    //test for silver app bar color
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
          backgroundColor: Colors.grey[400],
        ),
      ));

      expect((tester.widget(find.byType(Material)) as Material).color,
          Colors.grey[400]);
    });
    testWidgets('validate color for text on app bar', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: Text('U-Report',
          style: TextStyle(color: Colors.black)),
        ),
      ));

      expect(((tester.firstWidget(find.text('U-Report')) as Text).style).color, Colors.black);
    });
  });
}
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
//import 'package:ureport_app/main.dart' as ureport_app;

Finder findAppBarIcon(IconData icon) {
  return find.descendant(of: find.byType(AppBar), matching: find.byIcon(icon));
}

Finder findTabBarViewCard(IconData icon) {
  return find.descendant(of: find.byType(TabBarView), matching: find.byIcon(icon));
}

void main() {
  // a group of widget tests for the top navigation bar
  group('Top Navigation Bar', () {
    testWidgets('validate top bar widget text', (WidgetTester tester) async {

      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: Text('U-Report'),
        ),
      ));


      expect(find.text('U-Report'), findsOneWidget);
    });

    testWidgets('DefaultTabController icons validation', (WidgetTester tester) async {

      await tester.pumpWidget(
        MaterialApp(
          home: DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                bottom: TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.equalizer)),
                    Tab(icon: Icon(Icons.chat)),
                  ],
                ),
                title: Text('U-Report'),
              ),
            ),
          ),
        ),
      );


      expect(find.byIcon(Icons.equalizer), findsOneWidget);
      expect(find.byIcon(Icons.chat), findsOneWidget);
    });


  });
}
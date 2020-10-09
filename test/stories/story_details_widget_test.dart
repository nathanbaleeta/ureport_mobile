import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ureport_app/main.dart' as ureport_app;

Finder findSliverAppBar(){
  return find.descendant(of: find.byType(CustomScrollView), matching: find.byType(SliverAppBar));
}
Finder findSliverAppBarIcon(IconButton icon) {
  return find.descendant(of: find.byType(SliverAppBar), matching: find.byType(Row));
}

void main(){
  group('App Bar', () {
    testWidgets('SliverAppBar configuration', (WidgetTester tester) async {
      ureport_app.main();
      await tester.pumpWidget(
          new MaterialApp( home: new Scaffold(
            body: new CustomScrollView(
              slivers: [
                SliverAppBar(
                floating: true,
                pinned: false,
                snap: false,
              )]
            )
          ))
      );
      expect(find.byType(SliverAppBar), findsOneWidget);
    });
  });

}
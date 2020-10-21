import 'package:flutter/material.dart';
import 'package:ureport_app/app.dart';
import 'package:ureport_app/theme/theme.dart';
import 'package:ureport_app/theme/theme_notifier.dart';
import 'package:provider/provider.dart';

void main() => runApp(
  MultiProvider(
    providers: [
      ChangeNotifierProvider<ThemeNotifier>(
        create: (_) => ThemeNotifier(mainTheme, 'assets/LargeUreportIcon.png'),
      ),
    ],
      child: UReportApp(),
  ),
);


/// This Widget is the main application widget.
class UReportApp extends StatelessWidget {
  static const String _title = 'U-Report';

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return MaterialApp(
      title: _title,
      theme: themeNotifier.getTheme(),
      home: TabScreen(),
    );
  }
}

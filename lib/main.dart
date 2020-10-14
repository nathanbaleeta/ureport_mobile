import 'package:flutter/material.dart';
import 'package:ureport_app/app.dart';

void main() => runApp(UReportApp());

/// This Widget is the main application widget.
class UReportApp extends StatelessWidget {
  static const String _title = 'U-Report';

  @override
  Widget build(BuildContext context) {
    const bool showLogin = true; // soon to be changed with stateful UReportApp

    switch(showLogin) {
      case true:
        return MaterialApp(
          title: _title,
          theme: ThemeData(
            primarySwatch: Colors.lightBlue,
          ),
          home: RegistrationScreen(),
        );
        break;
      case false: default:
      return MaterialApp(
        title: _title,
        theme: ThemeData(
          primarySwatch: Colors.lightBlue,
        ),
        home: TabScreen(),
      );
    }
  }
}

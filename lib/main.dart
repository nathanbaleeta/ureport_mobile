
import 'package:flutter/material.dart';

void main() => runApp(UReportApp());

class UReportApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to U-Report',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to U-Report'),
        ),
        body: Center(
          child: Text('Welcome to U-Report'),
        ),
      ),
    );
  }
}
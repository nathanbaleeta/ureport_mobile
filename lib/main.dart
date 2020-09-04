import 'package:flutter/material.dart';

void main() {
  runApp(UReportApp());
}

class UReportApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
          body: TabBarView(
            children: [
              Icon(Icons.equalizer),
              Icon(Icons.chat),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:section14/listview_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JSON ListView in Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListViewPage(),
    );
  }
}

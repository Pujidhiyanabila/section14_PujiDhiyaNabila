import 'package:flutter/material.dart';
import 'package:taskgridview/gridview_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridView',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GridViewPage(),
    );
  }
}

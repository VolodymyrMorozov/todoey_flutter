import 'package:flutter/material.dart';
import 'package:todoeyflutter/screens/tesks_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TesksScreen(),
    );
  }
}

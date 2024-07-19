import 'package:flutter/material.dart';
import 'package:health_tracker/screens/add_breakfast.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor:Colors.white),
      home : BreakfastPage(),
    );
  }
}
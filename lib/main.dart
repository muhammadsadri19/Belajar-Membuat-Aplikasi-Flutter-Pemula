import 'package:flutter/material.dart';
import 'package:worki/main_portfolio.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Worki',
      theme: ThemeData(),
      home: const MainPortfolio(),
    );
  }
}

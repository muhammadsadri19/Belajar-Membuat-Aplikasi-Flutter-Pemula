import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worki/pages/main_portfolio.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Worki',
      theme: ThemeData(
          fontFamily:
              GoogleFonts.nunito(fontWeight: FontWeight.w600).fontFamily),
      home: const MainPortfolio(),
    );
  }
}

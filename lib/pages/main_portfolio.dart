import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worki/pages/home_page.dart';
import 'package:worki/pages/profile_page.dart';
import 'package:worki/pages/setting_page.dart';

class MainPortfolio extends StatefulWidget {
  const MainPortfolio({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainPortfolioState createState() => _MainPortfolioState();
}

class _MainPortfolioState extends State<MainPortfolio> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    ProfilePage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'WORKI FAMILY',
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(30, 41, 59, 1),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(30, 41, 59, 1),
          selectedItemColor: Color.fromARGB(255, 244, 192, 3),
          unselectedItemColor: Colors.white,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box), label: 'Profile'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_applications_rounded),
                label: 'Setting'),
          ]),
    );
  }
}

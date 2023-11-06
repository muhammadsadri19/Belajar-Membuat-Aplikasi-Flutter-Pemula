import 'package:flutter/material.dart';
import 'package:worki/pages/secondpage.dart';

class MainPortfolio extends StatefulWidget {
  const MainPortfolio({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainPortfolioState createState() => _MainPortfolioState();
}

class _MainPortfolioState extends State<MainPortfolio> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const Text('Halaman 1'),
    const Text('Halaman 2'),
    const Text('Halaman 3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Muhammad Sadri App',
          style: TextStyle(),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(30, 41, 59, 1),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_max_rounded), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet_rounded),
                label: 'Profile'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_applications_rounded),
                label: 'Setting'),
          ]),
    );
  }
}

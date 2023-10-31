import 'package:flutter/material.dart';
import 'package:worki/detail_portfolio.dart';
import 'package:worki/model/data_portfolio.dart';
import 'package:worki/secondpage.dart';

class MainPortfolio extends StatefulWidget {
  const MainPortfolio({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainPortfolioState createState() => _MainPortfolioState();
}

class _MainPortfolioState extends State<MainPortfolio> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const MainPortfolioPage(),
    const YourSecondPage()

    // Add other pages here
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
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: const Color.fromRGBO(30, 41, 59, 1),
        unselectedItemColor: Colors.white,
        selectedItemColor: const Color.fromARGB(255, 96, 242, 255),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment),
            label: 'Stateless',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment),
            label: 'Statefull',
          ),
          // Add more BottomNavigationBarItems for additional pages
        ],
      ),
    );
  }
}

class MainPortfolioPage extends StatelessWidget {
  const MainPortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final DataPortfolio portfolio = dataPortfolioList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailPortfolio(
                portfolio: portfolio,
              );
            }));
          },
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Image.asset(portfolio.imageasset),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          portfolio.nama,
                          style: const TextStyle(fontSize: 16.0),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(portfolio.tanggal),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
      itemCount: dataPortfolioList.length,
    );
  }
}

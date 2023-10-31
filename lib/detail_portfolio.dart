import 'package:flutter/material.dart';
import 'package:worki/model/data_portfolio.dart';

class DetailPortfolio extends StatelessWidget {
  final DataPortfolio portfolio;

  const DetailPortfolio({Key? key, required this.portfolio}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Detail Portfolio'),
          backgroundColor: const Color.fromRGBO(30, 41, 59, 1),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 25.0, bottom: 25.0),
                child: Text(
                  portfolio.nama,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                child: Image.asset(
                  portfolio.imageasset,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 10, bottom: 40, right: 30, left: 30),
                child: Text('Deskripsi : \n \n${portfolio.deskripsi}'),
              ),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                      child: Image.asset('images/pf1.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Image.asset('images/pf2.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Image.asset('images/pf3.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Image.asset('images/pf4.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Image.asset('images/pf5.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Image.asset('images/pf6.png'),
                    ),
                  ],
                ),
              )
            ],
          )),
        ));
  }
}

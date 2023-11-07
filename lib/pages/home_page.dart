import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Widget> items = [
    Image.asset(
      'lib/images/pf1.png',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'lib/images/pf2.png',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'lib/images/pf3.png',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'lib/images/pf4.png',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'lib/images/pf5.png',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'lib/images/pf6.png',
      fit: BoxFit.cover,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15.0, top: 15.0),
              child: CircleAvatar(
                radius: 25.0,
                backgroundImage: AssetImage('lib/images/profile.jpg'),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15.0, left: 15.0),
                  child: Text(
                    'Muhammad Sadri',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Mobile Dev | QA Engineer',
                    style:
                        TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: CarouselSlider(
            items: items,
            options: CarouselOptions(
                height: 250,
                enlargeCenterPage: true,
                viewportFraction: 0.9,
                aspectRatio: 2.0,
                initialPage: 0,
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.ease),
          ),
        ),
      ],
    );
  }
}

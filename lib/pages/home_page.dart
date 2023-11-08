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
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 75,
            width: 360,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3))
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 15.0, left: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Apakah kamu penasaran?"),
                      Text('Silahkan klik disini !')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(
                    'lib/images/icons/link.png',
                    height: 30,
                    width: 30,
                  ),
                )
              ],
            ),
          ),
        ),
        const Padding(
            padding: EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Menu',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
                ),
                Text(
                  'Lihat semua',
                  style: TextStyle(
                      color: Color.fromRGBO(30, 41, 59, 1),
                      fontSize: 13,
                      fontWeight: FontWeight.w700),
                ),
              ],
            )),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(30, 41, 59, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Image.asset(
                          'lib/images/icons/submission.png',
                          width: 25,
                          height: 25,
                        ),
                      ),
                    ),
                    const Text(
                      'Submission',
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(30, 41, 59, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Image.asset(
                          'lib/images/icons/submission.png',
                          width: 25,
                          height: 25,
                        ),
                      ),
                    ),
                    const Text('Payslip')
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(30, 41, 59, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Image.asset(
                          'lib/images/icons/submission.png',
                          width: 25,
                          height: 25,
                        ),
                      ),
                    ),
                    const Text('Attendance')
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(30, 41, 59, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Image.asset(
                          'lib/images/icons/submission.png',
                          width: 25,
                          height: 25,
                        ),
                      ),
                    ),
                    const Text('Job Desk')
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

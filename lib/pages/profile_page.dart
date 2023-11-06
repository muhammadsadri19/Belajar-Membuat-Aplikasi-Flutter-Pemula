import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 30.0),
          child: Image.asset('lib/images/background_profile.jpg'),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 10.0),
          child: Text(
            'MUHAMMAD SADRI',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 15.0),
          child: Text(
            'Mobile Dev| QA Engineer',
            style: TextStyle(
                fontWeight: FontWeight.w400, fontStyle: FontStyle.italic),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 1.0,
          color: Colors.black,
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:icon_icons/icon_icons.dart';
import 'package:google_fonts/google_fonts.dart';

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
            'Mobile Dev | QA Engineer',
            style: TextStyle(
                fontWeight: FontWeight.w400, fontStyle: FontStyle.italic),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 1.0,
          color: Colors.black,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 30.00),
          child: Text('Worki by Telkom Indonesia'),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20.0, right: 10.0, left: 10.0),
          child: Center(
            child: Text(
              "Super apps for HC Service to increase employee engagement & boost your teams remote-working experience.",
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50.0, right: 80.0, left: 80.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(child: IconIcons.facebook()),
              Expanded(child: IconIcons.whatsapp()),
              Expanded(child: IconIcons.linkedin()),
              Expanded(child: IconIcons.youtube()),
              Expanded(child: IconIcons.telegram()),
            ],
          ),
        )
      ],
    );
  }
}

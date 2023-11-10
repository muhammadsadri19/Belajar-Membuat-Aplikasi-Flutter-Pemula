import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  SettingPage({Key? key}) : super(key: key);

  final List<String> dropdownOptions = [
    'Mobile Developer',
    'Web Developer',
    'QA Engineer'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 25.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 40.0,
                backgroundImage: AssetImage('lib/images/profile.jpg'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text('@muuri._'),
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20.0, left: 35.0, right: 35.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 80,
                child: Column(
                  children: [Text('48'), Text('Mengikuti')],
                ),
              ),
              SizedBox(
                width: 80,
                child: Column(
                  children: [Text('26'), Text('Pengikut')],
                ),
              ),
              SizedBox(
                width: 80,
                child: Column(
                  children: [Text('19'), Text('Suka')],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color.fromARGB(255, 199, 199, 199)),
                child: const Center(
                  child: Text('Edit Profil'),
                ),
              ),
              const SizedBox(width: 5),
              Container(
                width: 120,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color.fromARGB(255, 199, 199, 199)),
                child: const Center(
                  child: Text('Bagikan Profil'),
                ),
              ),
              const SizedBox(width: 5),
              Container(
                width: 50,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color.fromARGB(255, 199, 199, 199)),
                child: const Center(
                  child: Icon(Icons.add_alert_outlined),
                ),
              ),
            ],
          ),
        ),
        const Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Muuriidayoo',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Muuriidayoo',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
          child: DropdownButtonFormField<String>(
            decoration: const InputDecoration(
              hintText: 'Pilih posisi',
              border: OutlineInputBorder(),
            ),
            value: dropdownOptions[0],
            items: dropdownOptions.map((String option) {
              return DropdownMenuItem<String>(
                value: option,
                child: Text(option),
              );
            }).toList(),
            onChanged: (String? newValue) {
              print('Selected: $newValue');
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(30, 41, 59, 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {
                      // Aksi yang dijalankan ketika tombol pertama ditekan
                      print('Disimpan');
                    },
                    child: const Text('Simpan'),
                  ),
                ),
              ),

              // Tombol teks kedua
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {
                    // Aksi yang dijalankan ketika tombol kedua ditekan
                    print('Dibatalkan');
                  },
                  child: const Text('Batal'),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

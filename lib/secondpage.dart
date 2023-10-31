import 'package:flutter/material.dart';

class YourSecondPage extends StatefulWidget {
  const YourSecondPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _YourSecondPageState createState() => _YourSecondPageState();
}

class _YourSecondPageState extends State<YourSecondPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Tombol telah ditekan sebanyak:'),
            Text('$_counter', style: const TextStyle(fontSize: 40)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(30, 41, 59, 1),
        onPressed: _incrementCounter,
        tooltip: 'Tambah',
        child: const Icon(Icons.add),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pelatihan1/1a.dart';

void main() {
  runApp(const Aplikasiku());
}

class Aplikasiku extends StatelessWidget {
  const Aplikasiku({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasiku',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Latihan 1a'),
        ),
        body: const Halaman(),
      ),
    );
  }
}

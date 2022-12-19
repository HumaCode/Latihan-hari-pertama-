import 'dart:math';

import 'package:flutter/material.dart';

class AngkaAcak extends StatefulWidget {
  const AngkaAcak({super.key});

  @override
  State<AngkaAcak> createState() => _AngkaAcakState();
}

class _AngkaAcakState extends State<AngkaAcak> {
  final List<String> data = <String>[];
  final TextStyle font = const TextStyle(fontSize: 18);
  final rng = Random();

  Widget buatBaris(String i) {
    return ListTile(
      title: Text(
        i,
        style: font,
      ),
    );
  }

  Widget buatList() {
    return ListView.builder(
        itemCount: data.length,
        padding: const EdgeInsets.all(16),
        itemBuilder: (BuildContext _context, int i) {
          return buatBaris(data[i]);
        });
  }

  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < 20; i++) {
      data.add(rng.nextInt(99).toString());
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("Latihan 1b (Angka Acak)"),
      ),
      body: Center(
        child: buatList(),
      ),
    );

    ;
  }
}

import 'package:flutter/material.dart';
import 'package:pelatihan1/1b.dart';
import 'package:pelatihan1/1c.dart';

class Halaman extends StatelessWidget {
  const Halaman({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      // column fungsi = menyusun widget secara vertical
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // text
          const Text(
            "Selamat Datang di Aplikasi Pertama ku",
            style: TextStyle(
              // memberikan style pada teks
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center, // ben tulisane rata tengah
          ),

          // jarak antara teks dan tombol
          const SizedBox(height: 30),

          // row tombol, fungsi menyusun widget secara horizontal
          Row(
            mainAxisAlignment: MainAxisAlignment
                .spaceEvenly, // memberikan jarak / margin antara tombol dengan tombol dan batas samping kanan kiri
            children: [
              ElevatedButton(
                onPressed: () {
                  // pindah halaman / activity
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const AngkaAcak(),
                    ),
                  );
                },
                child: const Text("Latihan 1b"), // title dari tombol
              ),
              ElevatedButton(
                onPressed: () {
                  // pindah halaman / activity
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MyLayout(),
                    ),
                  );
                },
                child: const Text("Latihan 1c"), // title dari tombol
              ),
            ],
          ),
        ],
      ),
    );
  }
}

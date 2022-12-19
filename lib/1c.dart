import 'package:flutter/material.dart';

class MyLayout extends StatelessWidget {
  const MyLayout({super.key});

  //buat fungsi untuk membuat widget teks
  Widget buatTeks() {
    return const Text('ini adalah komponen teks');
  }

//buat fungsi untuk membuat widget gambar
  Widget buatGambar() {
    return Container(
        width: 200,
        height: 200,
        child: Image.network(
            'https://media.giphy.com/media/9uwnYUDw342pq/giphy.gif'));
  }

//buat fungsi untuk membuat widget Icon
  Widget buatIcon() {
    return Icon(Icons.beach_access, color: Colors.blue, size: 40);
  }

//buat fungsi untuk membuat alert dialog

  tampilAlertDialog(BuildContext context) {
    Widget cancelButton = ElevatedButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    Widget continueButton = ElevatedButton(
      child: Text("Lanjut"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    AlertDialog alert = AlertDialog(
      title: Text("INIXINDO"),
      content: Text("Lanjutkan aplikasi?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Latihan 1c"),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              Center(
                child: ElevatedButton(
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  onPressed: () {
                    tampilAlertDialog(context);
                  },
                ),
              ),
              buatTeks(),
              buatIcon(),
              buatGambar(),
            ],
          ),
        ));
  }
}

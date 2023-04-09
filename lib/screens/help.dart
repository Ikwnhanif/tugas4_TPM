import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child:
                Text('Aplikasi ini dibuat untuk merekomendasikan user untuk'),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Cara Penggunaan Aplikasi'),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
                '1. Pengguna Login dengan username = user dan password = pass'),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
                '2. Terdapat Empat Menu utama yaitu, Profil Page, Stopwatch, Daftar Situs Ecommerce Rekomendasi, dan Halaman Favorite'),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('3. '),
          ),
        ],
      ),
    );
  }
}

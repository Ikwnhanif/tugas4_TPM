import 'package:flutter/material.dart';
import 'package:tugaskelompok4/screens/anggota.dart';
import 'package:tugaskelompok4/screens/situsrekomendasi.dart';
import 'package:tugaskelompok4/screens/stopwatch.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenstate createState() => _HomeScreenstate();
}

class _HomeScreenstate extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfilPage()),
                      );
                    },
                    child: Text(
                      'Profile Anggota',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold),
                    ))),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
                padding: const EdgeInsets.all(0.0),
                width: 20.0,
                height: 20.0,
              ),
            ),
            SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => StopwatchApp()),
                      );
                    },
                    child: Text(
                      'Stopwatch',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold),
                    ))),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
                padding: const EdgeInsets.all(0.0),
                width: 20.0,
                height: 20.0,
              ),
            ),
            SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EcommerceGridView()),
                      );
                    },
                    child: Text(
                      'Situs Rekomendasi',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold),
                    ))),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
                padding: const EdgeInsets.all(0.0),
                width: 20.0,
                height: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

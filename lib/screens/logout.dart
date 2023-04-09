import 'package:flutter/material.dart';
import 'package:tugaskelompok4/screens/home.dart';
import 'package:tugaskelompok4/screens/login.dart';

class ExitConfirmationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Apakah Anda yakin ingin keluar?',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: Text('Tidak'),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return MyHomePage(
                      title: 'HomeScreen',
                    );
                  }));
                },
              ),
              RaisedButton(
                child: Text('Ya'),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                      (route) => false);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ProfilPage extends StatefulWidget {
  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  int _pageIndex = 0;
  final _pages = [
    ProfileHanif(),
    ProfileIshla(),
    ProfileBagas(),
  ];

  void _goToNextPage() {
    setState(() {
      if (_pageIndex < _pages.length - 1) {
        _pageIndex++;
      }
    });
  }

  void _goToPreviousPage() {
    setState(() {
      if (_pageIndex > 0) {
        _pageIndex--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Anggota'),
      ),
      body: _pages[_pageIndex],
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: _goToPreviousPage,
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: _goToNextPage,
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileHanif extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/images/hanif.jpeg'),
            ),
            SizedBox(height: 20),
            Text(
              'Muhammad Ikhwan Hanif',
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '123200096 - IF D',
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Wishing is not enough, we must do.',
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Centaur',
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class ProfileIshla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/images/isla.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'Muhammad Nur Ishlaahudin S.',
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '123200097 - IF D',
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Wishing is not enough, we must do.',
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Centaur',
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class ProfileBagas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/images/bagas.jpeg'),
            ),
            SizedBox(height: 20),
            Text(
              'Bagas Dewantoro Ibrahim',
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '123200107 - IF D',
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Wishing is not enough, we must do.',
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Centaur',
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

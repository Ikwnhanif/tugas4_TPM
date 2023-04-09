import 'package:flutter/material.dart';
import 'package:tugaskelompok4/screens/dataecommerece.dart';
import 'package:tugaskelompok4/screens/detailpage.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final favoritesite =
        ecommerceSites.where((site) => site.isFavorite).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Situs Favorite'),
      ),
      body: GridView.builder(
        itemCount: favoritesite.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 16.0,
        ),
        itemBuilder: (context, index) {
          final EcommerceSite site = favoritesite[index];
          return Card(
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailPage(
                              site: site,
                            )));
              },
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Stack(
                      children: [
                        Image.network(
                          site.imageUrl[0],
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      site.name,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EcommerceSite {
  final String name;
  final String imageUrl;
  final String link;
  bool isFavorite;

  EcommerceSite(
      {required this.name,
      required this.imageUrl,
      required this.link,
      this.isFavorite = false});
}

List<EcommerceSite> ecommerceSites = [
  EcommerceSite(
    name: 'Lazada',
    imageUrl:
        'https://th.bing.com/th/id/OIP.BWiWddIEnr3x3u-WdZwLdAAAAA?w=177&h=116&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    link: 'https://www.lazada.co.id/',
  ),
  EcommerceSite(
    name: 'Tokopedia',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiqQGnQhMSn4isnBDQjx1cFonxclDv-i9P12JkvZriYqa8vIbz&s',
    link: 'https://www.tokopedia.com/',
  ),
  EcommerceSite(
    name: 'Shopee',
    imageUrl:
        'https://th.bing.com/th?q=White+Shopee+Logo&w=120&h=120&c=1&rs=1&qlt=90&cb=1&dpr=1.3&pid=InlineBlock&mkt=en-ID&cc=ID&setlang=en&adlt=strict&t=1&mw=247',
    link: 'https://shopee.co.id/',
  ),
  EcommerceSite(
    name: 'BliBli',
    imageUrl:
        'https://th.bing.com/th/id/OIP.KMbHmMoZs6rBTMIvs38EHQHaHa?w=181&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    link: 'https://www.blibli.com/',
  ),
  EcommerceSite(
    name: 'BukaLapak',
    imageUrl:
        'https://th.bing.com/th/id/OIP.GugcGM5zLTLYbKG4BMFPOwHaHa?w=169&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    link: 'https://www.bukalapak.com/',
  ),
  EcommerceSite(
    name: 'KlikIndomaret',
    imageUrl:
        'https://th.bing.com/th/id/OIP.JAo4uIXiE_ECEnMOlcgz7gHaD4?w=288&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    link: 'https://www.klikindomaret.com/',
  ),
];

class EcommerceGridView extends StatefulWidget {
  const EcommerceGridView({Key? key}) : super(key: key);

  @override
  _EcommerceGridViewState createState() => _EcommerceGridViewState();
}

class _EcommerceGridViewState extends State<EcommerceGridView> {
  List<EcommerceSite> _ecommerceSites = ecommerceSites;

  void _toggleFavorite(int index) {
    setState(() {
      _ecommerceSites[index].isFavorite = !_ecommerceSites[index].isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Situs Ecommerce'),
      ),
      body: GridView.builder(
        itemCount: _ecommerceSites.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 16.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          final site = _ecommerceSites[index];
          return Card(
            child: InkWell(
              onTap: () async {
                if (await canLaunch(site.link)) {
                  await launch(site.link);
                } else {
                  throw 'Could not launch ${site.link}';
                }
              },
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Stack(
                      children: [
                        Image.network(
                          site.imageUrl,
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.contain,
                        ),
                        Positioned(
                          top: 8.0,
                          right: 8.0,
                          child: IconButton(
                            icon: Icon(
                              site.isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: site.isFavorite ? Colors.red : null,
                            ),
                            onPressed: () => _toggleFavorite(index),
                          ),
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

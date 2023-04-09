import 'package:flutter/material.dart';
import 'package:tugaskelompok4/screens/dataecommerece.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatefulWidget {
  final EcommerceSite site;
  const DetailPage({Key? key, required this.site}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.blue,
          elevation: 0,
          title: const Text(
            'Halaman Detail',
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Sans-Serif',
                fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () async {
                final snackBar = SnackBar(
                  content: Text(
                    widget.site.isFavorite
                        ? "Bukan Favorit lagi"
                        : "Berhasil Ditambahkan Ke Favorit",
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                setState(() {
                  widget.site.isFavorite = !widget.site.isFavorite;
                });
              },
              icon: Icon(
                widget.site.isFavorite ? Icons.favorite : Icons.favorite_border,
                color: Colors.red,
              ),
            ),
          ],
        ),
        body: ListView(
          children: [
            SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.site.imageUrl.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image.network(
                        widget.site.imageUrl[index],
                        fit: BoxFit.fitHeight,
                      ),
                    );
                  }),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
              child: Text('${widget.site.name}'),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
              child: Text('${widget.site.description}'),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(80, 10, 80, 0),
              child: ElevatedButton(
                  onPressed: () {
                    _launchInBrowser('${widget.site.link}');
                  },
                  child: Text('Kunjungi Laman !')),
            )
          ],
        ));
  }

  Future<void> _launchInBrowser(String url) async {
    final Uri _url = Uri.parse(url);
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $url');
    }
  }
}

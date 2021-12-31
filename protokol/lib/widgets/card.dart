import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:protokol/models/artikel.dart';

// ignore: non_constant_identifier_names
Widget ArtikelCard(BuildContext context, Artikel artikel) {
  return Center(
    child: Card(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          debugPrint('Card tapped.');
        },
        child: SizedBox(
          width: 300,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Image.network(artikel.imageLink),
                    const SizedBox(height: 10.0),
                    Text(
                      artikel.judul,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      artikel.deskripsi,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 12),
                    // ElevatedButton(onPressed: () {}, child: Text("Read More"))
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: TextButton(
                        child: const Text(
                          "Read More",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xFF00ADB5)),
                        ),
                        onPressed: () {
                          _launchURL(artikel.artikelLink);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

void _launchURL(String url) async {
  if (!await launch(url)) throw 'Could not launch $url';
}

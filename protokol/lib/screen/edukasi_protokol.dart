import 'package:flutter/material.dart';
import 'package:protokol/models/artikel.dart';
import 'package:protokol/widgets/buat_artikel.dart';
import 'package:protokol/widgets/card.dart';
import 'package:protokol/widgets/carousel.dart';
import 'package:protokol/data/data.dart';

class EdukasiProtokol extends StatefulWidget {
  const EdukasiProtokol({Key? key}) : super(key: key);

  @override
  _EdukasiProtokolState createState() => _EdukasiProtokolState();
}

class _EdukasiProtokolState extends State<EdukasiProtokol> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        const Carousel(),
        SizedBox(height: 18),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "Edukasi Protokol COVID-19",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 32, color: Colors.black),
          ),
        ),
        FutureBuilder<List<Artikel>>(
          future: getArtikel(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final List<Artikel>? article = snapshot.data;
              if (article?.isNotEmpty ?? false) {
                return ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: article?.length,
                  itemBuilder: (context, index) {
                    return ArtikelCard(
                      context,
                      article![index],
                    );
                  },
                );
              } else {
                return const Text(
                  "Tidak ada artikel yang ditampilkan",
                );
              }
            } else if (snapshot.hasError) {
              return Text(
                snapshot.error.toString(),
              );
            } else {
              return const Text(
                "Loading...",
              );
            }
          },
        ),
        SizedBox(height: 12),
        BuatArtikel()
      ]),
    );
  }
}

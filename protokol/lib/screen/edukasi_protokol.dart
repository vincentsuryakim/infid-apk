import 'package:flutter/material.dart';
import 'package:protokol/models/artikel.dart';
import 'package:protokol/widgets/buat_artikel.dart';
import 'package:protokol/widgets/card.dart';
import 'package:protokol/widgets/carousel.dart';
import 'package:protokol/data/data.dart';
import 'package:infid_apk/navbar.dart';
import 'package:google_fonts/google_fonts.dart';

class EdukasiProtokol extends StatefulWidget {
  const EdukasiProtokol({Key? key}) : super(key: key);

  @override
  _EdukasiProtokolState createState() => _EdukasiProtokolState();
}

class _EdukasiProtokolState extends State<EdukasiProtokol> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff222831),
        title: Text(
          '',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                letterSpacing: .5,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      drawer: const DrawerScreen(),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          const Carousel(),
          const SizedBox(height: 18),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Edukasi Protokol COVID-19",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 32,
                  color: Colors.black),
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
                    physics: const NeverScrollableScrollPhysics(),
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
          const SizedBox(height: 12),
          const BuatArtikel()
        ]),
      ),
    );
  }
}

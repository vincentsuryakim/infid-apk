import 'package:flutter/material.dart';
import 'package:vaksincovid/vaksincovidmain.dart';
import 'package:google_fonts/google_fonts.dart';

class VaksinCovidPage extends StatefulWidget {
  const VaksinCovidPage({Key? key}) : super(key: key);

  @override
  State<VaksinCovidPage> createState() => _VaksinCovidPage();
}

class _VaksinCovidPage extends State<VaksinCovidPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff222831),
        title: Text(
          'Vaksinasi Covid-19',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
                color: Colors.white,
                letterSpacing: .5,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            // ignore: sized_box_for_whitespace
            Container(
              height: 64,
              child: DrawerHeader(
                child: Text(
                  'Infid',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0xff222831),
                ),
              ),
            ),
            ListTile(
              title: const Text('Home Page'),
              onTap: () {
                // Go to Riwayat Jurnal screen
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Vaksinasi Covid-19'),
              onTap: () {
                // Go to Jurnal Baru page
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Layanan Isolasi Mandiri'),
              onTap: () {
                // Go to Jurnal Baru page
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Rumah Sakit Rujukan'),
              onTap: () {
                // Go to Jurnal Baru page
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Tim Pakar Covid-19'),
              onTap: () {
                // Go to Jurnal Baru page
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Kontak Layanan'),
              onTap: () {
                // Go to Jurnal Baru page
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Edukasi Protokol'),
              onTap: () {
                // Go to Jurnal Baru page
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

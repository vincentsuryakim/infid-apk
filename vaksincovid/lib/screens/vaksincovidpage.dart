import 'package:flutter/material.dart';
import 'package:vaksincovid/vaksincovidmain.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infid_apk/navbar.dart';

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
      drawer: const DrawerScreen(),
      body: SingleChildScrollView(),
    );
  }
}

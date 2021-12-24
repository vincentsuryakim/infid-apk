import 'package:flutter/material.dart';
import 'package:pakar/models/tim_pakar_models.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pakar/screens/tim_pakar_covid_page.dart';


Widget buildArticleItem(BuildContext context, Regist regist) {
  return Card(
    clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
            ListTile(
              leading: const Icon(Icons.arrow_drop_down_circle),
              title:  Text(regist.nama, style: GoogleFonts.poppins()),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
                child: Text(
                  '''Tempat Bertugas : ${regist.tempatBertugas}\nAsal Universitas : ${regist.asalUniversitas}\nPesan : ${regist.pesan}''',
                  style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black.withOpacity(0.6)
                  )
                ),
              ),
          ),
        ]
      ),
  );
}
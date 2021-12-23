import 'package:flutter/material.dart';
import 'package:pakar/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pakar/screens/forms.dart';
//import 'package:lab_7/screens/drawer.dart';
import 'package:pakar/widgets/carousel.dart';


class TimPakarCovidPage extends StatefulWidget {
  const TimPakarCovidPage({Key? key}) : super(key: key);

  @override 
  State<TimPakarCovidPage> createState() => _TimPakarCovidPage();
}

class _TimPakarCovidPage extends State<TimPakarCovidPage>{
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff222831),
        title: Text(
          'Tim Pakar Covid-19 Indonesia',
           style: GoogleFonts.poppins(
            textStyle: TextStyle(color: Colors.white, letterSpacing: .5, fontWeight: FontWeight.bold),
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
              child:  DrawerHeader(
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Carousel(),
            SizedBox(height: 18),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Tim Pakar Covid-19 Indonesia",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(textStyle: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 32, color: Colors.black)),
              ),
            ),    
             Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                '"Wherever the art of Medicine is loved, there is also a love of Humanity.”\n - Hippocrate',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(),
              ),
            ),    
        
          Divider(),
            Card(
              clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.arrow_drop_down_circle),
                      title:  Text('Prof. Drh. Wiku Adisasmito, M.Sc., Ph.D.', style: GoogleFonts.poppins()),
                      
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        '''Tempat Bertugas : Sekretaris MWA UI dan Guru Besar FKM UI\nAsal Universitas : Universitas Indonesia\nDeskripsi Diri : Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.''',
                        style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black.withOpacity(0.6))),
                      ),
                    ),
                    ]
                  ),
                ),
              Card(
              clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.arrow_drop_down_circle),
                      title:  Text('Prof. Dr. dr. Akmal Taher, Sp.U(K)', style: GoogleFonts.poppins()),
                      
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        '''Tempat Bertugas : Ketua Tim Uji Klinik Alat Kesehatan, Direktorat Jenderal Farmasi, Kementerian KesehatanI\nAsal Universitas : Universitas Indonesia\nDeskripsi Diri : Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.''',
                        style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black.withOpacity(0.6))),
                      ),
                    ),
                    ]
                  ),
                ),
   
          ]
        ),
      ]
      ),
      ),
    
    
        floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff222831),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) =>  FormPakar()));
        },
        tooltip: 'Daftar Menjadi Pakar',
        child: const Icon(Icons.add),
      ),
      
    );

    

          // children: [ListTile ( Text(
          //         Nama : 'Prof. Drh. Wiku Adisasmito, M.Sc., Ph.D.',
          //         Tempat Bertugas : 'Sekretaris MWA UI dan Guru Besar FKM UI',
          //         Asal Universitas : 'Universitas Indonesia',
          //         Deskripsi Diri : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
          //       )
          //       ),
          //       ListTile( Text(
          //         Nama : 'Prof. Dr. dr. Akmal Taher, Sp.U(K)',
          //         Tempat Bertugas : 'Ketua Tim Uji Klinik Alat Kesehatan, Direktorat Jenderal Farmasi, Kementerian Kesehatan',
          //         Asal Universitas : 'Universitas Indonesia',
          //         Deskripsi Diri : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
          //       )
          //       ),
          //       ListTile(
          //         Nama : 'Deyuna Arham Rusmiland',
          //         Tempat Bertugas : 'Kementrian Kesehatan',
          //         Asal Universitas : 'Universitas Indonesia',
          //         Deskripsi Diri : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
          // )
          // ]
           
}
}
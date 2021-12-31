import 'package:flutter/material.dart';
import 'package:vaksincovid/methods/get_vaksin.dart';
import 'package:vaksincovid/models/vaksin_model.dart';
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
        backgroundColor: const Color(0xff222831),
        title: Text(
          'Vaksinasi Covid-19',
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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Vaksinasi COVID-19",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: Colors.black)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            'Vaksinasi adalah pemberian Vaksin dalam rangka menimbulkan atau meningkatkan kekebalan seseorang secara aktif terhadap suatu penyakit, sehingga apabila suatu saat terpajan dengan penyakit tersebut tidak akan sakit atau hanya mengalami sakit ringan dan tidak menjadi sumber penularan.',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(fontSize: 20),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            'Pelayanan vaksinasi COVID-19 dilaksanakan di Fasilitas Pelayanan Kesehatan milik Pemerintah Pusat, Pemerintah Daerah Provinsi, Pemerintah Daerah Kabupaten/Kota atau milik masyarakat/swasta yang memenuhi persyaratan.',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(fontSize: 20),
            ),
          ),
        ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            'Daftar Vaksin yang Digunakan serta Informasi Lengkap',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(fontSize: 32),
            ),
          ),
        ),
        FutureBuilder<List<VaksinData>>(
            future: getDataVaksin(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final List<VaksinData>? listvaksin = snapshot.data;
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    dataRowHeight: 300,
                    columns: const <DataColumn>[
                      DataColumn(
                        label: Text(
                          'Nama',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Deskripsi',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Usia',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Jadwal',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Dosis 1',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Dosis 2',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                    rows: listvaksin!
                        .map((vaksinData) => DataRow(cells: [
                              DataCell(Text(vaksinData.nama)),
                              DataCell(ConstrainedBox(
                                  constraints: const BoxConstraints(
                                      maxWidth: 300,
                                      minWidth: 50), //SET max width
                                  child: Text(vaksinData.deskripsi,
                                      overflow: TextOverflow.visible))),
                              DataCell(ConstrainedBox(
                                  constraints: const BoxConstraints(
                                      maxWidth: 100,
                                      minWidth: 50), //SET max width
                                  child: Text(vaksinData.usia,
                                      overflow: TextOverflow.visible))),
                              DataCell(ConstrainedBox(
                                  constraints: const BoxConstraints(
                                      maxWidth: 100,
                                      minWidth: 50), //SET max width
                                  child: Text(vaksinData.jadwal,
                                      overflow: TextOverflow.visible))),
                              DataCell(ConstrainedBox(
                                  constraints: const BoxConstraints(
                                      maxWidth: 100,
                                      minWidth: 50), //SET max width
                                  child: Text(vaksinData.dosis1,
                                      overflow: TextOverflow.visible))),
                              DataCell(ConstrainedBox(
                                  constraints: const BoxConstraints(
                                      maxWidth: 100,
                                      minWidth: 50), //SET max width
                                  child: Text(vaksinData.dosis2,
                                      overflow: TextOverflow.visible))),
                            ]))
                        .toList(),
                  ),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text(
                    snapshot.error.toString(),
                  ),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
      ])),
    );
  }
}

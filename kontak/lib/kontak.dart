import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'kontak_form.dart';
import 'kontak_models.dart';
import 'get_add_data.dart';
import 'package:infid_apk/navbar.dart';

class KontakLayananState extends StatefulWidget {
  const KontakLayananState({Key? key}) : super(key: key);

  @override
  KontakLayanan createState() => KontakLayanan();
}

class KontakLayanan extends State<KontakLayananState> {
  final List<Data> _datas = <Data>[];

  @override
  void initState() {
    getData().then((value) {
      setState(() {
        _datas.addAll(value);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff222831),
        title: Text(
          'Kontak Layanan',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                letterSpacing: .5,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      drawer: const DrawerScreen(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 17, left: 15, right: 15),
                  child: Text(
                    _datas[index].nama,
                    style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 17, left: 15, right: 15, bottom: 10),
                  child: Text(
                    "Email :  " + _datas[index].email,
                    style: GoogleFonts.poppins(),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 17),
                  child: Text(
                    "Nomor Kontak :  " + _datas[index].nomorKontak,
                    style: GoogleFonts.poppins(),
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: _datas.length,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff222831),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const FormKontak()));
        },
        tooltip: 'Tambah Kontak',
        child: const Icon(Icons.add),
      ),
    );
  }
}

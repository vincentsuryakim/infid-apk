import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pakar/methods/add_data.dart';
import 'package:pakar/models/tim_pakar_models.dart';
import 'package:pakar/screens/tim_pakar_covid_page.dart';



class FormPakar extends StatefulWidget {
  const FormPakar({Key? key}) : super(key: key);

  @override
  _FormPakar createState() => _FormPakar();
}

class _FormPakar extends State<FormPakar> {
  late String nama;
  late String tempatBertugas;
  late String asalUniversitas;
  late String pesan;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: const Color(0xff222831),
        title: Text("Pendaftaran Tim Pakar Covid-19 Indonesia",
         style: GoogleFonts.poppins(
            textStyle: const TextStyle(color: Colors.white, letterSpacing: .5, fontWeight: FontWeight.bold),
          ),),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "contoh: Susilo Bambang",
                      labelText: "Nama Lengkap",
                      icon: const Icon(Icons.people),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Nama tidak boleh kosong';
                      }
                      nama = value;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "contoh: Rumah Sakit",
                      labelText: "Tempat Bekerja",
                      icon: const Icon(Icons.domain_sharp),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Tempat Bekerja tidak boleh kosong';
                      }
                      tempatBertugas = value;
                    },
                  ),
                ),
                Padding(  
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "contoh: Universitas Indonesia",
                      labelText: "Asal Universitas",
                      icon: const Icon(Icons.school),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Universitas tidak boleh kosong';
                      }
                      asalUniversitas = value;
                    },
                  ),
                ),
                Padding(  
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Deskripsi Diri",
                      icon: const Icon(Icons.assignment_ind),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Deskripsi diri tidak boleh kosong';
                      }
                      pesan = value;
                    },
                  ),
                ),
                     
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(
                        10.0,
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                        ),
                        onPressed: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            Regist newArticle = Regist(
                              nama: nama,
                              tempatBertugas: tempatBertugas,
                              asalUniversitas: asalUniversitas,
                              pesan: pesan,
                            );
                            addNewPakar(newArticle).then((value) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    value,
                                  ),
                                ),
                              );
                            });
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const TimPakarCovidPage()),
                            );
                          }
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(
                            right: 20.0,
                            left: 20.0,
                          ),
                          child: Text(
                            'Submit',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
  }
}
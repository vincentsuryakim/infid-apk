import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protokol/models/artikel.dart';
import 'package:protokol/data/data.dart';
import 'package:protokol/screen/edukasi_protokol.dart';

class AddArtikel extends StatefulWidget {
  const AddArtikel({Key? key}) : super(key: key);

  @override
  _AddArtikel createState() => _AddArtikel();
}

class _AddArtikel extends State<AddArtikel> {
  late String judul;
  late String imageLink;
  late String artikelLink;
  late String tanggalPublish;
  late String deskripsi;
  late String publisher;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    tanggalPublish = DateTime.now().toString().substring(0, 10);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff222831),
          title: Text(
            "Buat Artikel Edukasi Protokol COVID-19",
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  color: Colors.white,
                  letterSpacing: .5,
                  fontWeight: FontWeight.bold),
            ),
          ),
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
                        labelText: "Judul Artikel",
                        icon: const Icon(Icons.people),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          debugPrint('Judul tidak boleh kosong');
                          return 'Judul tidak boleh kosong';
                        }
                        judul = value;
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "https://picsum.photos/536/354",
                        labelText: "Link Foto",
                        icon: const Icon(Icons.add_photo_alternate),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          debugPrint('Foto tidak boleh kosong');
                          return 'Foto tidak boleh kosong';
                        }
                        imageLink = value;
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Link Artikel",
                        icon: const Icon(Icons.add_link),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          debugPrint('Link artikel tidak boleh kosong');
                          return 'Link artikel tidak boleh kosong';
                        }
                        artikelLink = value;
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Publisher",
                        icon: const Icon(Icons.person),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          debugPrint('Publisher tidak boleh kosong');
                          return 'Publisher tidak boleh kosong';
                        }
                        publisher = value;
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Deskripsi Singkat",
                        icon: const Icon(Icons.article),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          debugPrint('Deskripsi tidak boleh kosong');
                          return 'Deskripsi tidak boleh kosong';
                        }
                        deskripsi = value;
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 18),
                  // ignore: deprecated_member_use
                  RaisedButton(
                      child: const Text(
                        "Submit",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.teal.shade400,
                      onPressed: () {
                        debugPrint("Button Clicked");
                        _formKey.currentState!.validate();
                        if (_formKey.currentState?.validate() ?? false) {
                          Artikel artikelbaru = Artikel(
                            judul: judul,
                            imageLink: imageLink,
                            artikelLink: artikelLink,
                            tanggalPublish: tanggalPublish,
                            publisher: publisher,
                            deskripsi: deskripsi,
                          );
                          addArtikel(artikelbaru).then((value) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  value,
                                ),
                              ),
                            );
                          });
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const EdukasiProtokol();
                          }));
                        }
                      }),
                ],
              ),
            ),
          ),
        ));
  }
}

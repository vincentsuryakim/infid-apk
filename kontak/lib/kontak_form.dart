import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'kontak_models.dart';
import 'get_add_data.dart';
import 'package:http/http.dart' as http;
import 'package:infid_apk/navbar.dart';

class FormKontak extends StatefulWidget {
  const FormKontak({Key? key}) : super(key: key);

  @override
  _FormKontakState createState() => _FormKontakState();
}

class _FormKontakState extends State<FormKontak> {
  TextEditingController namaControl = TextEditingController();
  TextEditingController emailControl = TextEditingController();
  TextEditingController nomorKontakControl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff222831),
        title: Text(
          "Menambahkan Kontak Layanan",
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                letterSpacing: .5,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(6),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 35,
                    margin: const EdgeInsets.only(bottom: 8),
                    child: TextField(
                      controller: namaControl,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Nama',
                        isDense: true,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(6),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 35,
                    margin: const EdgeInsets.only(bottom: 8),
                    child: TextField(
                      controller: emailControl,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        isDense: true,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(6),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 35,
                    margin: const EdgeInsets.only(bottom: 8),
                    child: TextField(
                      controller: nomorKontakControl,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Nomor Kontak',
                        isDense: true,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  if (namaControl.text == '' ||
                      emailControl.text == '' ||
                      nomorKontakControl.text == '') {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Mohon lengkapi data anda")));
                  } else {
                    Data newData = Data(
                        nama: namaControl.text,
                        email: emailControl.text,
                        nomorKontak: nomorKontakControl.text);

                    addData(newData).then((value) {
                      setState(() {});
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                        value,
                      )));
                    });
                  }
                },
                child: const Text("Submit"),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff00ADB5))),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: ElevatedButton(
                  child: const Text(
                    "Back",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(169, 169, 169, 90),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'models.dart';
import 'rsrujukan.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(
    title: "Form RS",
    home: FormRS(),
  ));
}

class FormRS extends StatefulWidget {
  @override
  _FormRSState createState() => _FormRSState();
}

Future<dynamic> addData(Data newData) async {
  var url =
      Uri.parse('https://pbpempat.herokuapp.com/rsrujukan/add-rumahsakit/');
  var response = await http.post(url,
      headers: {
        "Access-Control_Allow_Origin": "*",
        "Content-Type": "application/json; charset=utf-8",
      },
      body: jsonEncode(newData));
  return jsonDecode(response.body)["success"];
}

class _FormRSState extends State<FormRS> {
  final _formKey = GlobalKey<FormState>();
  double nilaiSlider = 1;
  bool nilaiCheckBox = false;
  bool nilaiSwitch = true;
  TextEditingController nama_control = TextEditingController();
  TextEditingController tempat_control = TextEditingController();
  TextEditingController alamat_control = TextEditingController();
  TextEditingController noTelfon_control = TextEditingController();
  Data? _newRS = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menambahkan Rumah Sakit"),
        backgroundColor: Color.fromRGBO(6, 59, 182, 1),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
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
                      controller: nama_control,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Nama RS',
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
                      controller: tempat_control,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Tempat RS',
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
                      controller: alamat_control,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Alamat RS',
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
                      controller: noTelfon_control,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Nomor Telfon RS',
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
                  if (nama_control.text == '' ||
                      tempat_control.text == '' ||
                      alamat_control.text == '' ||
                      noTelfon_control.text == '') {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Mohon lengkapi data anda")));
                  } else {
                    Data newData = Data(
                        nama: nama_control.text,
                        tempat: tempat_control.text,
                        alamat: alamat_control.text,
                        noTelfon: noTelfon_control.text);

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
                  child: Text(
                    "Back",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(6, 59, 182, 1),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

import 'dart:convert';
import 'package:flutter/material.dart';
import 'models.dart';
import 'package:http/http.dart' as http;

class FormRS extends StatefulWidget {
  const FormRS({Key? key}) : super(key: key);

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
  TextEditingController namaControl = TextEditingController();
  TextEditingController tempatControl = TextEditingController();
  TextEditingController alamatControl = TextEditingController();
  TextEditingController noTelfonControl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menambahkan Rumah Sakit"),
        backgroundColor: const Color.fromRGBO(6, 59, 182, 1),
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
                      controller: tempatControl,
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
                      controller: alamatControl,
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
                      controller: noTelfonControl,
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
                  if (namaControl.text == '' ||
                      tempatControl.text == '' ||
                      alamatControl.text == '' ||
                      noTelfonControl.text == '') {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Mohon lengkapi data anda")));
                  } else {
                    Data newData = Data(
                        nama: namaControl.text,
                        tempat: tempatControl.text,
                        alamat: alamatControl.text,
                        noTelfon: noTelfonControl.text);

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
                    primary: const Color.fromRGBO(6, 59, 182, 1),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

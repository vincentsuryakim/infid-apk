import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

import 'form_user.dart';
import 'models.dart';

// void main() => runApp(const MaterialApp(
//       home: RSRujukanState(),
//     ));

class RSRujukanState extends StatefulWidget {
  const RSRujukanState({Key? key}) : super(key: key);

  @override
  RSRujukan createState() => RSRujukan();
}

class RSRujukan extends State<RSRujukanState> {
  List<Data> _datas = <Data>[];

  Future<List<Data>> fetchData() async {
    var url = Uri.parse('https://pbpempat.herokuapp.com/rsrujukan/get-rs/');
    var response = await http.get(url);

    var rumahSakit = <Data>[];

    var data = json.decode(response.body);
    for (var res in data) {
      rumahSakit.add(Data.fromJson(res));
    }
    return rumahSakit;
  }

  @override
  void initState() {
    fetchData().then((value) {
      setState(() {
        _datas.addAll(value);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(197, 203, 212, 0.4),
        appBar: AppBar(
          title: const Center(child: Text("Rumah Sakit Rujukan")),
          backgroundColor: Color.fromRGBO(6, 59, 182, 1),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 17, left: 15, right: 15, bottom: 20),
                    child: Text(
                      _datas[index].nama,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 17, left: 15, right: 50, bottom: 12),
                    child: Text(_datas[index].alamat),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 50, bottom: 10),
                    child: Text(
                      "No Telfon: " + _datas[index].noTelfon,
                      style: const TextStyle(
                          fontStyle: FontStyle.italic, fontSize: 10),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          top: 30, left: 15, right: 50, bottom: 10),
                      child: Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse(
                            'https://pbpempat.herokuapp.com/rsrujukan/user_book/'),
                        builder: (context, followLink) => ElevatedButton(
                            child: Text('Book'), onPressed: followLink),
                      )),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 50, bottom: 10),
                    child: ElevatedButton(
                        child: const Text(
                          "Tambah detail RS",
                          style: TextStyle(fontSize: 12),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FormRS()));
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(6, 59, 182, 1),
                          // minimumSize: Size(120, 30),
                          // maximumSize: Size(120, 30),
                        )),
                  ),
                ],
              ),
            );
          },
          itemCount: _datas.length,
        ));
  }

  // launchURL() async {
  //   final url_book = 'https://pbpempat.herokuapp.com/rsrujukan/user_book/';
  //   if (await canLaunch(url_book)) {
  //     await launch(url_book);
  //   } else {
  //     throw 'Gagal membuka $url_book';
  //   }
  // }
}

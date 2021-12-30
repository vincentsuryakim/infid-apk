import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  runApp(const AddSebaranApp());
}

class AddSebaranApp extends StatelessWidget {
  const AddSebaranApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AddSebaran(),
    );
  }
}

class AddSebaran extends StatefulWidget {
  const AddSebaran({Key? key}) : super(key: key);

  @override
  State<AddSebaran> createState() => _AddSebaranState();
}

class _AddSebaranState extends State<AddSebaran> {
  String _provinsi = "";
  String _terkonfirmasi = "";
  String _aktif = "";
  String _sembuh = "";
  String _meninggal = "";

  String _status = "";

  void _updateProvinsi(String provinsi) {
    setState(() {
      _provinsi = provinsi;
    });
  }

  void _updateTerkonfirmasi(String terkonfirmasi) {
    setState(() {
      _terkonfirmasi = terkonfirmasi;
    });
  }

  void _updateAktif(String aktif) {
    setState(() {
      _aktif = aktif;
    });
  }

  void _updateSembuh(String sembuh) {
    setState(() {
      _sembuh = sembuh;
    });
  }

  void _updateMeninggal(String meninggal) {
    setState(() {
      _meninggal = meninggal;
    });
  }

  void _updateStatus(String status) {
    setState(() {
      _status = status;
    });
  }

  Future<void> _submitData() async {
    _updateStatus("Loading...");

    final response = await http.post(
      Uri.parse('https://pbpempat.herokuapp.com/sebaran/add-sebaran'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'provinsi': _provinsi,
        'terkonfirmasi': _terkonfirmasi,
        'aktif': _aktif,
        'sembuh': _sembuh,
        'meninggal': _meninggal,
      }),
    );

    if (response.statusCode == 200) {
      _updateStatus("Submit data berhasil");
    } else {
      _updateStatus("Submit data gagal");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Sebaran'),
        backgroundColor: const Color(0xff222831),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                onChanged: (String value) {
                  _updateProvinsi(value);
                },
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: 'Provinsi',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.public),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                onChanged: (String value) {
                  _updateTerkonfirmasi(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Terkonfirmasi',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.edit_rounded),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                onChanged: (String value) {
                  _updateAktif(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Kasus Aktif',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.edit_rounded),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                onChanged: (String value) {
                  _updateSembuh(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Sembuh',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.edit_rounded),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                onChanged: (String value) {
                  _updateMeninggal(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Meninggal',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.edit_rounded),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: MaterialButton(
                  onPressed: () => _submitData(),
                  color: Colors.blue,
                  child: const Text(
                    'Tambahkan',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                _status,
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

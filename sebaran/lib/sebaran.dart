import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

import 'add_sebaran.dart';
import 'widgets/global_info.dart';

void main() async {
  runApp(const SebaranApp());
}

class SebaranApp extends StatelessWidget {
  const SebaranApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MySebaran(),
    );
  }
}

class MySebaran extends StatefulWidget {
  const MySebaran({Key? key}) : super(key: key);

  @override
  State<MySebaran> createState() => _MySebaranState();
}

class _MySebaranState extends State<MySebaran> {
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<Widget> fetchData() async {
    const url = 'https://pbpempat.herokuapp.com/sebaran/sebaran-json';
    try {
      final http.Response response = await http.get(Uri.parse(url));
      Map<String, dynamic> extractedData = jsonDecode(response.body);

      List<Widget> widgets = [];

      NumberFormat f = NumberFormat("#,###,##0");

      // print(extractedData);

      List<DataRow> tableData = [];

      for (var i = 0; i < extractedData['sebaran'].length; i++) {
        tableData.add(
          DataRow(cells: [
            DataCell(Text((i + 1).toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ))),
            DataCell(Text(extractedData['sebaran'][i]['provinsi'])),
            DataCell(Text(f
                .format(
                    extractedData['sebaran'][i]['jumlah_kasus_terkonfirmasi'])
                .replaceAll(RegExp(r','), '.'))),
            DataCell(Text(f
                .format(extractedData['sebaran'][i]['jumlah_kasus_aktif'])
                .replaceAll(RegExp(r','), '.'))),
            DataCell(Text(f
                .format(extractedData['sebaran'][i]['jumlah_sembuh'])
                .replaceAll(RegExp(r','), '.'))),
            DataCell(Text(f
                .format(extractedData['sebaran'][i]['jumlah_meninggal'])
                .replaceAll(RegExp(r','), '.'))),
          ]),
        );
      }

      widgets.add(const SizedBox(height: 8));
      widgets.add(GlobalInfoWidget(
        judul: 'Terkonfirmasi',
        jumlah: f
            .format(extractedData['terkonfirmasi'])
            .replaceAll(RegExp(r','), '.'),
        background: "sebaran/covid.jpeg",
        backgroundLink:
            "https://gitlab.com/vincent.suryakim/pbp-lab/-/raw/master/lab_6/assets/images/covid.jpeg",
      ));
      widgets.add(GlobalInfoWidget(
        judul: 'Kasus Aktif',
        jumlah: f.format(extractedData['aktif']).replaceAll(RegExp(r','), '.'),
        background: "sebaran/aktif.png",
        backgroundLink:
            "https://gitlab.com/vincent.suryakim/pbp-lab/-/raw/master/lab_6/assets/images/aktif.png",
      ));
      widgets.add(GlobalInfoWidget(
        judul: 'Sembuh',
        jumlah: f.format(extractedData['sembuh']).replaceAll(RegExp(r','), '.'),
        background: "sebaran/sembuh.png",
        backgroundLink:
            "https://gitlab.com/vincent.suryakim/pbp-lab/-/raw/master/lab_6/assets/images/sembuh.png",
      ));
      widgets.add(GlobalInfoWidget(
        judul: 'Meninggal',
        jumlah:
            f.format(extractedData['meninggal']).replaceAll(RegExp(r','), '.'),
        background: "sebaran/meninggal.jpg",
        backgroundLink:
            "https://gitlab.com/vincent.suryakim/pbp-lab/-/raw/master/lab_6/assets/images/meninggal.jpg",
      ));
      widgets.add(const SizedBox(height: 40));
      widgets.add(const Text(
        "Persebaran per-Provinsi",
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ));
      widgets.add(const SizedBox(height: 10));
      widgets.add(SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            columns: const [
              DataColumn(label: Text("#")),
              DataColumn(label: Text("Provinsi")),
              DataColumn(label: Text("Terkonfirmasi")),
              DataColumn(label: Text("Kasus Aktif")),
              DataColumn(label: Text("Sembuh")),
              DataColumn(label: Text("Meninggal")),
            ],
            rows: tableData,
          )));
      widgets.add(const SizedBox(height: 20));
      widgets.add(ElevatedButton.icon(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddSebaranApp(),
            ),
          );
        },
        icon: const Icon(Icons.add, size: 18),
        label: const Text("ADD"),
      ));
      widgets.add(const SizedBox(
        height: 20,
      ));

      Widget wrapper = Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: widgets,
      );

      return wrapper;
    } catch (err) {
      return const Text("An error occurred");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Persebaran Covid-19'),
          backgroundColor: const Color(0xff222831),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: FutureBuilder(
              future: fetchData(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  Widget widgets = snapshot.data as Widget;

                  return widgets;
                } else {
                  return const Padding(
                    padding: EdgeInsets.only(top: 12),
                    child: Center(child: CircularProgressIndicator()),
                  );
                }
              },
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:infid_apk/navbar.dart';

import 'get_add_data.dart';
import 'models.dart';

class LayananIsolasiState extends StatefulWidget {
  const LayananIsolasiState({Key? key}) : super(key: key);

  @override
  LayananIsolasi createState() => LayananIsolasi();
}

class LayananIsolasi extends State<LayananIsolasiState> {
  TextEditingController namaLengkap = TextEditingController();
  TextEditingController umur = TextEditingController();
  TextEditingController kotaKabupaten = TextEditingController();
  TextEditingController namaIbuKandung = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0, //(0xff222831),
          title: const Text(
            "Layanan Isolasi",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        drawer: const DrawerScreen(),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const Text(
              "Panduan Penggunaan Layanan Isolasi Mandiri COVID-19",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8, left: 5, right: 5),
              child: Text(
                "Alur dalam penggunaan layanan isolasi mandiri ini diawasi\noleh Kementerian Kesehatan Republik Indonesia",
                style: TextStyle(
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 19),
                child: Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      clipBehavior: Clip.antiAlias,
                      color: const Color(0xff00ADB5),
                      elevation: 20,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, right: 8, left: 8),
                            child: Column(
                              children: [
                                Text(
                                  "1",
                                  style: TextStyle(color: Colors.pink[50]),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 16, bottom: 8),
                                  child: Text(
                                    "Melakukan Tes PCR",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Pasien melakukan tes PCR / swab antigen di laboratorium yang terafiliasi dengan Kementerian Kesehatan RI. Jika hasil tesnya positif dan lab melaporkan hasilnya ke database kasus positif COVID-19 di Kemenkes (NAR), maka pasien akan menerima Whatsapp dari Kemenkes RI (dengan centang hijau) secara otomatis.",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      clipBehavior: Clip.antiAlias,
                      color: const Color(0xff00ADB5),
                      elevation: 20,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, right: 8, left: 8),
                            child: Column(
                              children: [
                                Text(
                                  "2",
                                  style: TextStyle(color: Colors.pink[50]),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 16, bottom: 8),
                                  child: Text(
                                    "Konsultasi dengan Dokter",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Lakukan konsultasi dokter dengan menginformasikan Anda adalah pasien program Kementerian Kesehatan.",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      clipBehavior: Clip.antiAlias,
                      color: const Color(0xff00ADB5),
                      elevation: 20,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, right: 8, left: 8),
                            child: Column(
                              children: [
                                Text(
                                  "3",
                                  style: TextStyle(color: Colors.pink[50]),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 16, bottom: 8),
                                  child: Text(
                                    "Resep Digital",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Setelah melakukan konsultasi secara daring, dokter akan memberikan resep digital sesuai dengan kondisi pasien. Jika pasien masuk dalam kategori yang dapat melakukan isoman, obat dapat ditebus gratis.",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      clipBehavior: Clip.antiAlias,
                      color: const Color(0xff00ADB5),
                      elevation: 20,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, right: 8, left: 8),
                            child: Column(
                              children: [
                                Text(
                                  "4",
                                  style: TextStyle(color: Colors.pink[50]),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 16, bottom: 8),
                                  child: Text(
                                    "Pengiriman Obat",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Kementerian Kesehatan bekerja sama dengan jasa pengiriman dari SiCepat untuk mengambil obat dan/atau vitamin dari Apotek Kimia Farma dan mengirimkan ke alamat pasien.",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(color: Colors.black)),
                      clipBehavior: Clip.antiAlias,
                      color: const Color(0xff00ADB5),
                      elevation: 20,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, right: 8, left: 8),
                            child: Column(
                              children: [
                                Text(
                                  "5",
                                  style: TextStyle(color: Colors.pink[50]),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 16, bottom: 8),
                                  child: Text(
                                    "Mengisi Formulir Isolasi Mandiri",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Anda yang akan melakukan isolasi mandiri harap mengisi formulir dibawah ini agar biodata Anda tersimpan oleh Kementerian Kesehatan dan tetap terkontrol oleh Dokter.",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Icon(
                        Icons.arrow_circle_down,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 0, bottom: 8),
                      child: Text(
                        "Formulir Melakukan Isolasi Mandiri",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 10),
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 35,
                            margin: const EdgeInsets.only(bottom: 8),
                            child: TextField(
                              controller: namaLengkap,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Nama Lengkap',
                                isDense: true,
                              ),
                            ),
                          ),
                          Container(
                            height: 35,
                            margin: const EdgeInsets.only(bottom: 8),
                            child: TextField(
                              controller: umur,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Umur',
                                isDense: true,
                              ),
                            ),
                          ),
                          Container(
                            height: 35,
                            margin: const EdgeInsets.only(bottom: 8),
                            child: TextField(
                              controller: kotaKabupaten,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Kota/Kabupaten',
                                isDense: true,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 35,
                            child: TextField(
                              controller: namaIbuKandung,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Nama Ibu Kandung',
                                isDense: true,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ElevatedButton(
                              onPressed: () {
                                print(namaLengkap.text);
                                print(umur.text);
                                print(kotaKabupaten.text);
                                print(namaIbuKandung.text);
                                Data newData = Data(
                                  namaLengkap: namaLengkap.text,
                                  umur: umur.text,
                                  kotaKabupaten: kotaKabupaten.text,
                                  namaIbuKandung: namaIbuKandung.text,
                                );
                                addData(newData).then((value) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        value,
                                      ),
                                    ),
                                  );
                                });
                                setState(() {});
                              },
                              child: const Text("Submit"),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color(0xff00ADB5))),
                            ),
                          ),
                          const Text(
                            "Daftar Masyarakat Pengguna Layanan Isolasi Mandiri COVID-19",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          FutureBuilder<List<Data>>(
                              future: getData(),
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  final List<Data>? listData = snapshot.data;
                                  return SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: DataTable(
                                      columns: const <DataColumn>[
                                        DataColumn(
                                          label: Text(
                                            'Nama Lengkap',
                                            style: TextStyle(
                                                fontStyle: FontStyle.italic),
                                          ),
                                        ),
                                        DataColumn(
                                          label: Text(
                                            'Umur',
                                            style: TextStyle(
                                                fontStyle: FontStyle.italic),
                                          ),
                                        ),
                                        DataColumn(
                                          label: Text(
                                            'Kota/Kabupaten',
                                            style: TextStyle(
                                                fontStyle: FontStyle.italic),
                                          ),
                                        ),
                                        DataColumn(
                                          label: Text(
                                            'Nama Ibu Kandung',
                                            style: TextStyle(
                                                fontStyle: FontStyle.italic),
                                          ),
                                        ),
                                      ],
                                      rows: listData!.map((data) =>
                                      DataRow(
                                        cells: [
                                          DataCell(Text(data.namaLengkap)),
                                          DataCell(Text(data.umur)),
                                          DataCell(Text(data.kotaKabupaten)),
                                          DataCell(Text(data.namaIbuKandung)),
                                        ]
                                      )).toList(),
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
                          const Padding(
                            padding: EdgeInsets.only(top: 14.0, bottom: 5),
                            child: Text(
                              "Konsultasi Daring",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                          Wrap(
                            alignment: WrapAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 8),
                                child: Image.network(
                                  "https://gitlab.com/zeta.prawira/pbp-lab/-/raw/master/lab_7/lab_7/images/halodoc-logo.png",
                                  height: 17,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 8),
                                child: Image.network(
                                  "https://gitlab.com/zeta.prawira/pbp-lab/-/raw/master/lab_7/lab_7/images/klikdokter.jpeg",
                                  height: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 8),
                                child: Image.network(
                                  "https://gitlab.com/zeta.prawira/pbp-lab/-/raw/master/lab_7/lab_7/images/gooddoctor.jpeg",
                                  height: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 8),
                                child: Image.network(
                                  "https://gitlab.com/zeta.prawira/pbp-lab/-/raw/master/lab_7/lab_7/images/yesdok.jpeg",
                                  height: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 8),
                                child: Image.network(
                                  "https://gitlab.com/zeta.prawira/pbp-lab/-/raw/master/lab_7/lab_7/images/sehatq.jpeg",
                                  height: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 8),
                                child: Image.network(
                                  "https://gitlab.com/zeta.prawira/pbp-lab/-/raw/master/lab_7/lab_7/images/grabhealth.jpeg",
                                  height: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 8),
                                child: Image.network(
                                  "https://gitlab.com/zeta.prawira/pbp-lab/-/raw/master/lab_7/lab_7/images/alodokter.jpeg",
                                  height: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 8),
                                child: Image.network(
                                  "https://gitlab.com/zeta.prawira/pbp-lab/-/raw/master/lab_7/lab_7/images/klinikgo.jpeg",
                                  height: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 8),
                                child: Image.network(
                                  "https://gitlab.com/zeta.prawira/pbp-lab/-/raw/master/lab_7/lab_7/images/milvik.jpeg",
                                  height: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 8),
                                child: Image.network(
                                  "https://gitlab.com/zeta.prawira/pbp-lab/-/raw/master/lab_7/lab_7/images/getwell.jpeg",
                                  height: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 8),
                                child: Image.network(
                                  "https://gitlab.com/zeta.prawira/pbp-lab/-/raw/master/lab_7/lab_7/images/trustmedis.png",
                                  height: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 8),
                                child: Image.network(
                                  "https://gitlab.com/zeta.prawira/pbp-lab/-/raw/master/lab_7/lab_7/images/prosehat.jpeg",
                                  height: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                )),
          ]),
        ));
  }
}

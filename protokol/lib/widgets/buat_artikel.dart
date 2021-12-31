import 'package:flutter/material.dart';
import 'package:protokol/screen/add_artikel.dart';

class BuatArtikel extends StatelessWidget {
  const BuatArtikel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
        height: 200,
        child: Stack(children: [
          Image.network(
              'https://media.discordapp.net/attachments/815590728800796752/924687988414373928/pict.jpg?width=1337&height=663'),
          Positioned(
              child: SizedBox(
                  width: size.width * 0.3,
                  height: size.height,
                  child: SingleChildScrollView(
                    child: Column(children: [
                      const Text("Hello, Zeta!",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )),
                      const Text(
                        "Anda dapat menambahkankan artikel terkait edukasi protokol COVID-19 di sini!",
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const Text(
                        "Bagikan kebaikan, bagikan informasi kepada sesama",
                        style: TextStyle(
                          fontSize: 9,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      // ElevatedButton(onPressed: () {}, child: Text("Buat Artikel"))
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: TextButton(
                          child: const Text(
                            "Buat Artikel",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xFF00ADB5)),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AddArtikel(),
                              ),
                            );
                          },
                        ),
                      ),
                    ]),
                  )),
              left: size.width * 0.09,
              right: size.width * 0.09,
              top: size.height * 0.05,
              bottom: size.height * 0.05),
        ]));
  }
}

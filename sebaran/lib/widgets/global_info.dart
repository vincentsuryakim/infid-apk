import 'package:flutter/material.dart';

class GlobalInfoWidget extends StatelessWidget {
  const GlobalInfoWidget({
    Key? key,
    this.judul = "???",
    this.jumlah = "???",
    this.background = "assets/images/covid.jpeg",
  }) : super(key: key);

  final String judul;
  final String jumlah;
  final String background;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.9,
      child: Container(
          margin: const EdgeInsets.only(top: 25, bottom: 0),
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              color: const Color.fromRGBO(21, 38, 54, 1),
              image: DecorationImage(
                  image: AssetImage(background),
                  colorFilter: const ColorFilter.mode(
                      Color.fromRGBO(0, 0, 0, 0.3), BlendMode.dstATop),
                  fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                judul,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Colors.white),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    jumlah,
                    style: const TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ))
            ],
          )),
    );
  }
}

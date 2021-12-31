import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final List<Widget> myData = [
    Stack(children: [
      Image.network(
          'https://media.discordapp.net/attachments/815590728800796752/924685634034077766/vaksin.jpg?width=1440&height=569'),
      // const Positioned(
      //   child: Text(
      //     "BE KIND",
      //     style: TextStyle(
      //       fontSize: 10,
      //       color: Colors.white,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      //   bottom: 12,
      //   left: 170,
      //   right: 140,
      // )
    ]),
    Stack(
      children: [
        Image.network(
            'https://media.discordapp.net/attachments/815590728800796752/924685658243629136/masker.jpg?width=1440&height=569'),
        // const Positioned(
        //   child: Text(
        //     "BE SAFE",
        //     style: TextStyle(
        //       fontSize: 10,
        //       color: Colors.white,
        //       fontWeight: FontWeight.bold,
        //     ),
        //   ),
        //   bottom: 12,
        //   left: 170,
        //   right: 140,
        // ),
      ],
    ),
    Stack(
      children: [
        Image.network(
            'https://media.discordapp.net/attachments/815590728800796752/924686078122811452/people.jpg?width=1440&height=569'),
        // const Positioned(
        //   child: Text(
        //     "BE SMART",
        //     style: TextStyle(
        //       fontSize: 10,
        //       color: Colors.white,
        //       fontWeight: FontWeight.bold,
        //     ),
        //   ),
        //   bottom: 12,
        //   left: 165,
        //   right: 140,
        // ),
      ],
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      CarouselSlider(
          options: CarouselOptions(
            height: 140.0,
            viewportFraction: 1,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
          ),
          items: myData),
    ]);
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselTwo extends StatefulWidget {
  const CarouselTwo({Key? key}) : super(key: key);

  @override
  _CarouselTwoState createState() => _CarouselTwoState();
}

class _CarouselTwoState extends State<CarouselTwo> {
  // kontainer kek div
  // column --> kek flex column
  // item itu apa yg mo ditampilin

  final List<Widget> myData = [
    Stack(children: [
      Image.asset('gejalacovid.jpg'),
      const Positioned(
        child: Text(
          "BE KIND",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottom: 50,
        left: 90,
        right: 90,
      )
    ]),
    Stack(
      children: [
        Image.asset('mencegahvirus.jpg'),
        const Positioned(
          child: Text(
            "BE SAFE",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: 50,
          left: 90,
          right: 90,
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      CarouselSlider(
          options: CarouselOptions(
            height: 100.0,
            viewportFraction: 1,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
          ),
          items: myData),
    ]);
  }
}

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
      Image.asset('assets/images/dokterdokter.jpeg'),
    //   const Positioned(
    //     child: Text(
    //       "BE KIND",
    //       style: TextStyle(
    //         fontSize: 10,
    //         color: Colors.white,
    //         fontWeight: FontWeight.bold,
    //       ),
    //     ),
    //     bottom: 16,
    //     left: 155,
    //     right: 155,
    //   )
    ]),
    Stack(
      children: [
        Image.asset('assets/images/pakar.jpeg'),
        // const Positioned(
        //   child: Text(
        //     "BE SAFE",
        //     style: TextStyle(
        //       fontSize: 10,
        //       color: Colors.white,
        //       fontWeight: FontWeight.bold,
        //     ),
        //   ),
        //   bottom: 16,
        //   left: 155,
        //   right: 155,
        // ),
      ],
    ),
    Stack(
      children: [
        Image.asset('assets/images/suntikan.jpeg'),
        // const Positioned(
        //   child: Text(
        //     "BE SMART",
        //     style: TextStyle(
        //       fontSize: 10,
        //       color: Colors.white,
        //       fontWeight: FontWeight.bold,
        //     ),
        //   ),
        //   bottom: 16,
        //   left: 155,
        //   right: 155,
        // ),
      ],
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      CarouselSlider(
          options: CarouselOptions(
            height: 170.0,
            viewportFraction: 1,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
          ),
          items: myData),
    ]);
  }
}

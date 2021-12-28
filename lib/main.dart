import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xff222831), Color(0xff6f42c1)]),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            bottomOpacity: 0.0,
            elevation: 0.0, //(0xff222831),
            title: const Text("Infid"),
          ),
          drawer: const DrawerScreen(),
          body: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    const Text(
                      "Selamat Datang di Infid!",
                      style: TextStyle(
                        fontSize: 22,
                        //fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "Info COVID-19 di Indonesia",
                        style: TextStyle(
                          fontSize: 13,
                          //fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.only(top: 50),
                        child: CarouselSlider(
                          options: CarouselOptions(
                            height: 300,
                            aspectRatio: 16 / 9,
                            viewportFraction: 0.8,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            reverse: false,
                            autoPlay: true,
                            autoPlayInterval: const Duration(seconds: 3),
                            autoPlayAnimationDuration:
                                const Duration(milliseconds: 800),
                            //autoPlayCurve: Curves.fastOutSlowIn,
                            //enlargeCenterPage: true,
                            //onPageChanged: callbackFunction,
                            scrollDirection: Axis.horizontal,
                          ),
                          items: [
                            'https://gitlab.com/zeta.prawira/pbp-lab/-/raw/master/lab_6/lab_6/images/Covid1.png',
                            'https://gitlab.com/zeta.prawira/pbp-lab/-/raw/master/lab_6/lab_6/images/Covid2.png',
                            'https://gitlab.com/zeta.prawira/pbp-lab/-/raw/master/lab_6/lab_6/images/Covid3.png',
                          ].map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 0,
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Image.network(
                                        i,
                                        height: 300,
                                        width: 280,
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          }).toList(),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            style: TextButton.styleFrom(
                              primary: const Color(0xff00ADB5), // foreground
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  const Color(0xff00ADB5),
                                ),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                              child: const Text(
                                "Log In",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        "Silahkan Anda Log In untuk mengetahui informasi mengenai COVID-19 selengkapnya",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 40, bottom: 15),
                      child: Text(
                        "Aplikasi ini telah divalidasi oleh:",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.network(
                                'https://gitlab.com/zeta.prawira/pbp-lab/-/raw/master/lab_6/lab_6/images/kemenkes.png',
                                height: 30,
                              ),
                              Image.network(
                                'https://gitlab.com/zeta.prawira/pbp-lab/-/raw/master/lab_6/lab_6/images/kominfo.png',
                                height: 30,
                              ),
                              Image.network(
                                'https://gitlab.com/zeta.prawira/pbp-lab/-/raw/master/lab_6/lab_6/images/Kantor_Staf_Presiden.png',
                                height: 30,
                              ),
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.network(
                                    'https://gitlab.com/zeta.prawira/pbp-lab/-/raw/master/lab_6/lab_6/images/logo-bumn-vector-terbaru.jpg',
                                    height: 30,
                                  )),
                              Image.network(
                                'https://gitlab.com/zeta.prawira/pbp-lab/-/raw/master/lab_6/lab_6/images/polri.png',
                                height: 30,
                              ),
                            ])),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

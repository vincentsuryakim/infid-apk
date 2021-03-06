import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'navbar.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

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
                            kIsWeb
                                ? 'assets/main/Covid1.png'
                                : 'https://gitlab.com/zeta.prawira/pbp-lab/-/raw/master/lab_6/lab_6/images/Covid1.png',
                            kIsWeb
                                ? 'assets/main/Covid2.png'
                                : 'https://gitlab.com/zeta.prawira/pbp-lab/-/raw/master/lab_6/lab_6/images/Covid2.png',
                            kIsWeb
                                ? 'assets/main/Covid3.png'
                                : 'https://gitlab.com/zeta.prawira/pbp-lab/-/raw/master/lab_6/lab_6/images/Covid3.png',
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
                              kIsWeb
                                  ? Image.asset(
                                      'main/kemenkes.png',
                                      height: 30,
                                    )
                                  : Image.network(
                                      'https://gitlab.com/zeta.prawira/pbp-lab/-/raw/master/lab_6/lab_6/images/kemenkes.png',
                                      height: 30,
                                    ),
                              kIsWeb
                                  ? Image.asset(
                                      'main/kominfo.png',
                                      height: 30,
                                    )
                                  : Image.network(
                                      'https://gitlab.com/zeta.prawira/pbp-lab/-/raw/master/lab_6/lab_6/images/kominfo.png',
                                      height: 30,
                                    ),
                              kIsWeb
                                  ? Image.asset(
                                      'main/Kantor_Staf_Presiden.png',
                                      height: 30,
                                    )
                                  : Image.network(
                                      'https://gitlab.com/zeta.prawira/pbp-lab/-/raw/master/lab_6/lab_6/images/Kantor_Staf_Presiden.png',
                                      height: 30,
                                    ),
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: kIsWeb
                                      ? Image.asset(
                                          'main/logo-bumn-vector-terbaru.jpeg',
                                          height: 30,
                                        )
                                      : Image.network(
                                          'https://gitlab.com/zeta.prawira/pbp-lab/-/raw/master/lab_6/lab_6/images/logo-bumn-vector-terbaru.jpg',
                                          height: 30,
                                        )),
                              kIsWeb
                                  ? Image.asset(
                                      'main/polri.png',
                                      height: 30,
                                    )
                                  : Image.network(
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

// import 'package:flutter/material.dart';
// import 'package:protokol/screen/drawer.dart';
// import 'package:protokol/screen/edukasi_protokol.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Infid',
//       theme: ThemeData(
//           // This is the theme of your application.
//           //
//           // Try running your application with "flutter run". You'll see the
//           // application has a blue toolbar. Then, without quitting the app, try
//           // changing the primarySwatch below to Colors.green and then invoke
//           // "hot reload" (press "r" in the console where you ran "flutter run",
//           // or simply save your changes to "hot reload" in a Flutter IDE).
//           // Notice that the counter didn't reset back to zero; the application
//           // is not restarted.
//           primarySwatch: Colors.blueGrey),
//       home: const MyHomePage(title: 'Edukasi Protokol'),
//       routes: <String, WidgetBuilder>{
//         '/main': (context) => const EdukasiProtokol(),
//       },
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//         appBar: AppBar(
//           // Here we take the value from the MyHomePage object that was created by
//           // the App.build method, and use it to set our appbar title.
//           title: Text(widget.title),
//         ),
//         drawer: const DrawerScreen(),
//         body:
//             EdukasiProtokol()); // This trailing comma makes auto-formatting nicer for build methods.
//   }
// }

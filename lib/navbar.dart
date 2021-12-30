import 'package:flutter/material.dart';
import 'package:layananisolasi/layananisolasi.dart';
import 'package:pakar/main.dart';
import 'package:vaksincovid/vaksincovidmain.dart';
import 'main.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xff222831),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 18, top: 30),
                      child: Text(
                        "Selamat siang,",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 18, top: 3),
                      child: Text(
                        "Hai Zeta!👋",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.only(right: 35, top: 35),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red[900])),
                      child: const Text(
                        "Log Out",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: DrawerListTile(
                iconData: Icons.home,
                title: "Homepage",
                onTilePressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyApp(),
                    ),
                  );
                },
              ),
            ),
            DrawerListTile(
              iconData: Icons.healing_outlined,
              title: "Layanan Isolasi Mandiri",
              onTilePressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LayananIsolasiState(),
                  ),
                );
              },
            ),
            DrawerListTile(
              iconData: Icons.coronavirus,
              title: "Vaksinasi COVID-19",
              onTilePressed: () {},
            ),
            DrawerListTile(
              iconData: Icons.local_hospital,
              title: "Rumah Sakit Rujukan",
              onTilePressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const vaksinApp(),
                  ),
                );
              },
            ),
            DrawerListTile(
              iconData: Icons.person_rounded,
              title: "Tim Pakar COVID-19",
              onTilePressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TimPakarCovidApp(),
                  ),
                );
              },
            ),
            DrawerListTile(
              iconData: Icons.contact_page,
              title: "Kontak Layanan",
              onTilePressed: () {},
            ),
            DrawerListTile(
              iconData: Icons.bar_chart,
              title: "Persebaran Data",
              onTilePressed: () {},
            ),
            DrawerListTile(
              iconData: Icons.health_and_safety_outlined,
              title: "Edukasi Protokol",
              onTilePressed: () {},
            ),
            DrawerListTile(
              iconData: Icons.login,
              title: "Login",
              onTilePressed: () {},
            ),
            const Padding(
                padding: EdgeInsets.only(left: 15, top: 20),
                child: Text(
                  "'Marilah kita lakukan vaksinasi agar Indonesia terbebas dari pandemi' -Infid",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      fontStyle: FontStyle.italic,
                      color: Colors.white),
                )),
            Image.asset("main/CovidIcon.png")
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTilePressed;
  const DrawerListTile(
      {Key? key,
      required this.iconData,
      required this.title,
      required this.onTilePressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(
        iconData,
        color: Colors.white,
      ),
      title: Text(
        title,
        style: const TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }
}

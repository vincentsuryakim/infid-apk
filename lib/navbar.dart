import 'package:flutter/material.dart';
import 'package:layananisolasi/layananisolasi.dart';
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
      child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text("User"),
            accountEmail: Text("User@gmail.com"),
          ),
          DrawerListTile(
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
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.person_rounded,
            title: "Tim Pakar COVID-19",
            onTilePressed: () {},
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
        ],
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
      leading: Icon(iconData),
      title: Text(
        title,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:protokol/screen/edukasi_protokol.dart';

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
            accountName: Text("Pramesti Anjani Putri"),
            accountEmail: Text("tianpramesti01@gmail.com"),
          ),
          DrawerListTile(
            iconData: Icons.home,
            title: "Homepage",
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.healing_outlined,
            title: "Layanan Isolasi Mandiri",
            onTilePressed: () {},
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
            onTilePressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const EdukasiProtokol();
              }));
            },
          ),
          DrawerListTile(
            iconData: Icons.arrow_back_rounded,
            title: "Log out",
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

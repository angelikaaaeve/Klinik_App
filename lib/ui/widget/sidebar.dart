import 'package:flutter/material.dart';
import 'package:klinik_app/ui/login.dart';
import 'package:profile_view/profile_view.dart';
import '/../ui/Poli/poli_page.dart';
import '/../ui/Pegawai/pegawai_page.dart';
import '/../ui/Pasien/pasien_page.dart';
import '/ui/beranda.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.only(top: 25),
        children: [
          ProfileView(
            height: 150,
            width: 50,
            circle: true,
            borderRadius: 20,
            image: NetworkImage(
                "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg"),
          ),
          const SizedBox(height: 10),
          Column(
            children: [
              Text(
                "Alif Firman Hakim",
                style: TextStyle(fontSize: 20),
              ),
              Text("admin@gmail.com"),
              SizedBox(
                height: 20,
              ),
            ],
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Beranda"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Beranda()));
            },
          ),
          ListTile(
            leading: Icon(Icons.accessible),
            title: Text("Poli"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PoliPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Pegawai"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PegawaiPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.account_box_sharp),
            title: Text("Pasien"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PasienPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.logout_rounded),
            title: Text("Keluar"),
            onTap: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                  (Route<dynamic> route) => false);
            },
          ),
        ],
      ),
    );
  }
}

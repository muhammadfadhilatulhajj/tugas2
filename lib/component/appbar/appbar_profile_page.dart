import 'package:flutter/material.dart';
import 'package:langlung/component/body/profile.dart';

class AppbarProfilePage extends StatefulWidget {
  const AppbarProfilePage({Key? key}) : super(key: key);

  @override
  State<AppbarProfilePage> createState() => AppbarProfilePageState();
}

class AppbarProfilePageState extends State<AppbarProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar(
        title: const Text(
          "Akun Saya",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color(0xff7DA5F2),
        centerTitle: true,
      )),
      body: const Profile(),
    );
  }
}

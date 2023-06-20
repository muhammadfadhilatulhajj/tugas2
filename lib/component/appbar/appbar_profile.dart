import 'package:flutter/material.dart';

class AppbarProfilePage extends StatefulWidget {
  const AppbarProfilePage({Key? key}) : super(key: key);
  @override
  AppbarProfilePageState createState() => AppbarProfilePageState();
}

class AppbarProfilePageState extends State<AppbarProfilePage> {
  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
        shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(15))),
        expandedHeight: 70,
        automaticallyImplyLeading: false,
        leadingWidth: 5,
        floating: false,
        pinned: false,
        backgroundColor: Color(0xff7DA5F2),
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
        ),
        title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  "Akun saya",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 23,
                    fontFamily: "lato",
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ]));
  }
}

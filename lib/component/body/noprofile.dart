import 'package:flutter/material.dart';

class NoProfile extends StatefulWidget {
  const NoProfile({Key? key}) : super(key: key);

  @override
  State<NoProfile> createState() => NoProfileState();
}

class NoProfileState extends State<NoProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page no User"),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 100),
            child: Text(
              "Opsss...! ",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "poppins",
                  fontSize: 20,
                  color: Color(0xff1D1F21),
                  fontWeight: FontWeight.w700),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 3),
            child: Text(
              "Kamu belum punya akun yuk sambungin ! ",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "New Peninin MT",
                  fontSize: 15,
                  color: Color(0xff858585),
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                  width: 390,
                  height: 288,
                  child: Center(
                      child: Image.asset("assets/images/emotsedih.png"))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Align(
                alignment: Alignment.center,
                child: Container(
                  height: 35,
                  width: 163,
                  decoration: const BoxDecoration(
                    color: Color(0xff7DA5F2),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: const Center(
                    child: Text(
                      "sambungin Akun Yuk!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "Poppins",
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}

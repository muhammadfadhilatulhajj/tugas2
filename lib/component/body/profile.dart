import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:langlung/component/body/signinup_view.dart';

import 'noprofile.dart';

final GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: [
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ],
);

class Profile extends StatefulWidget {
  const Profile({
    Key? key,
  }) : super(key: key);

  @override
  ProfileState createState() => ProfileState();
}

class ProfileState extends State<Profile> {
  Future<void> handleSignOut() =>
      _googleSignIn.disconnect().then((value) => Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const SignInUpView())));

  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
    return user != null
        ? SingleChildScrollView(
            child: Stack(children: <Widget>[
            Stack(children: <Widget>[
              Container(
                height: 262.0,
                width: double.infinity,
                color: Colors.white,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 40.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          CircleAvatar(
                            radius: (35),
                            backgroundImage: NetworkImage(user.photoURL ?? ''),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, top: 5.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                      padding: const EdgeInsets.only(bottom: 3),
                                      child: Text(
                                        user.displayName ?? '',
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                            color: Color(0xff1D1F21),
                                            fontFamily: "lato",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14.0),
                                      )),
                                  Text(
                                    user.phoneNumber ?? '',
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        color: Color(0xff1D1F21),
                                        fontFamily: "lato",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12),
                                  ),
                                  Text(
                                    user.email ?? '',
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        color: Color(0xff1D1F21),
                                        fontFamily: "New Peninim MT",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      user.displayName ?? '',
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          color: Color(0xff1D1F21),
                                          fontFamily: "New Peninim MT",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                ]),
                          ),
                        ]),
                  ),
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Container(
                  padding: const EdgeInsets.only(top: 150, left: 33),
                  child: const Text(
                    "FaQs",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "poppins",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  )),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 180.0),
                child: Column(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const NoProfile()));
                      },
                      child: const Category(
                        txt: "Edit Profile",
                        icon: Icons.person,
                        padding: 20.0,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Category(
                        txt: "Call Center",
                        icon: Icons.call,
                        padding: 20.0,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Category(
                        txt: "About Apps",
                        icon: Icons.ad_units,
                        padding: 20.0,
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        await FirebaseAuth.instance
                            .signOut()
                            .then((value) => handleSignOut());
                      },
                      child: const Category(
                        txt: "Logout",
                        icon: Icons.account_circle,
                        padding: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 650),
                  child: Text(
                    "versi 0.78 | 2023",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.0,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Lato"),
                  ),
                ),
              ),
            ]),
          ]))
        : Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 19),
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
          );
  }
}

/// Component category class to set list
class Category extends StatelessWidget {
  final String? txt;
  final IconData? icon;
  final GestureTapCallback? tap;
  final double? padding;

  const Category({Key? key, this.txt, this.icon, this.tap, this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tap,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: padding!),
                      child: Icon(
                        icon,
                        size: 24.0,
                        color: Colors.black54,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Text(
                        txt!,
                        style: const TextStyle(
                          fontSize: 14.5,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Sofia",
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black26,
                    size: 15.0,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Divider(
            color: Colors.black12,
          )
        ],
      ),
    );
  }
}

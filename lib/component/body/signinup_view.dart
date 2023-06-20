import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:langlung/component/body/signin_view.dart';
import 'package:langlung/component/body/signout_view.dart';

import '../../auth/authentication.dart';
import '../../page/landing_page.dart';

class SignInUpView extends StatefulWidget {
  const SignInUpView({Key? key}) : super(key: key);

  @override
  SignInUpViewState createState() => SignInUpViewState();
}

final GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: [
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ],
);

/// Component Widget this layout UI
class SignInUpViewState extends State<SignInUpView>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Sign In',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  GoogleSignInAccount? currentUser;

  Future<void> handleSignIn() async {
    try {
      _googleSignIn.signIn().then((value) => Navigator.push(context,
          MaterialPageRoute(builder: (context) => const LandingPage())));
    } catch (error) {
      ("error gagal masuk ");
      if (kDebugMode) {
        print(error);
      }
    }
  }

  /// Component Widget layout UI
  @override
  Widget build(buildcontext) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    mediaQueryData.devicePixelRatio;
    mediaQueryData.size.width;
    mediaQueryData.size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xff7DA5F2), Colors.white],
          ),
        ),
        child: Container(
          /// Set gradient color in image (Click to open code)
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(0, 0, 0, 0.0),
                Color.fromRGBO(0, 0, 0, 0.3)
              ],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
            ),
          ),

          /// Set component layout
          child: ListView(
            children: <Widget>[
              Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        alignment: AlignmentDirectional.topCenter,
                        child: Column(
                          children: <Widget>[
                            /// padding logo
                            Padding(
                                padding: EdgeInsets.only(
                                    top: mediaQueryData.padding.top + 50.0)),

                            const Padding(
                                padding: EdgeInsets.symmetric(vertical: 40.0)),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: SizedBox(
                                height: 40,
                                width: 185,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.white),
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              const Color(0xffffffff)),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.zero,
                                              side: BorderSide(
                                                  color: Color(0xffffffff))))),
                                  onPressed: () async {
                                    User? user =
                                        await Authentication.signInWithGoogle(
                                            context: context);
                                    if (user != null) {
                                      // ignore: use_build_context_synchronously
                                      Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const LandingPage(),
                                        ),
                                      );
                                    }
                                  },
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 1, right: 13),
                                        child: Image.asset(
                                          "assets/icon/Google.png",
                                          height: 18,
                                          width: 18,
                                        ),
                                      ),
                                      const Text(
                                        "Sign in with Google",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: "Roboto",
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 40,
                                    width: 185,
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                          foregroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Colors.white),
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  const Color(0xffD9D9D9)),
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  side: const BorderSide(
                                                      color: Color(0xffD9D9D9))))),
                                      onPressed: (() {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const SignIn()));
                                      }),
                                      child: const Text(
                                        "Login",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.2,
                                            fontFamily: "New Peninim MT",
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              width: 185,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            const Color(0xffD9D9D9)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            side: const BorderSide(
                                                color: Color(0xffD9D9D9))))),
                                onPressed: (() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Signout()));
                                }),
                                child: const Text(
                                  "Daftar",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xffffffff),
                                      letterSpacing: 0.2,
                                      fontFamily: "New Peninim MT",
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 290.0),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0.0,
                                    backgroundColor: Colors.transparent,
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    "versi 0.78 | 2023",
                                    style: TextStyle(
                                        color: Color(0xffffffff),
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Lato"),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: mediaQueryData.padding.top + 100.0,
                                  bottom: 0.0),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:langlung/component/body/signout_view.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  SignInState createState() => SignInState();
}

final auth = FirebaseAuth.instance;

/// Component Widget this layout UI
class SignInState extends State<SignIn> with TickerProviderStateMixin {
  //Animation Declaration
  late AnimationController sanimationController;

  var tap = 0;

  get email => null;

  get password => null;

  @override

  /// set state animation controller
  void initState() {
    sanimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 800))
      ..addStatusListener((statuss) {
        if (statuss == AnimationStatus.dismissed) {
          setState(() {
            tap = 0;
          });
        }
      });
    super.initState();
  }

  /// Dispose animation controller
  @override
  void dispose() {
    sanimationController.dispose();
    super.dispose();
  }

  /// Component Widget layout UI
  @override
  Widget build(BuildContext context) {
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
                            const Padding(
                                padding: EdgeInsets.symmetric(vertical: 10.0)),
                            TextFromField(
                              icon: Icons.email,
                              password: false,
                              email: "Email",
                              inputType: TextInputType.emailAddress,
                              onChanged: (value) {},
                            ),
                            const Padding(
                                padding: EdgeInsets.symmetric(vertical: 5.0)),
                            TextFromField(
                              icon: Icons.vpn_key,
                              password: true,
                              email: "Password",
                              inputType: TextInputType.text,
                              onChanged: (value) {},
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
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
                                      onPressed: (() {}),
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
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
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
                                              const Color(0xffD9D9D9)),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              side: const BorderSide(
                                                  color: Color(0xffD9D9D9))))),
                                  onPressed: (() => {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Signout()))
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
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 100.0),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0.0,
                                    backgroundColor: Colors.transparent,
                                  ),
                                  onPressed: () async {
                                    setState(() {});
                                    try {
                                      final user =
                                          await auth.signInWithEmailAndPassword(
                                              email: email, password: password);
                                      // ignore: unnecessary_null_comparison
                                      if (user != null) {
                                        Navigator.pushNamed(
                                            context, 'LandingPage');
                                      }
                                    } catch (e) {
                                      if (kDebugMode) {
                                        print(e);
                                      }
                                    }
                                    setState(() {});
                                  },
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

class TextFromField extends StatelessWidget {
  final bool? password;
  final String? email;
  final IconData? icon;
  final TextInputType? inputType;

  const TextFromField(
      {Key? key,
      this.email,
      this.icon,
      this.inputType,
      this.password,
      required Null Function(dynamic value) onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        width: 225,
        height: 42,
        alignment: AlignmentDirectional.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(blurRadius: 10.0, color: Colors.black12)
            ]),
        padding: const EdgeInsets.only(
            left: 20.0, right: 30.0, top: 0.0, bottom: 0.0),
        child: Theme(
          data: ThemeData(
            hintColor: Colors.transparent,
          ),
          child: TextFormField(
            obscureText: password!,
            decoration: InputDecoration(
                border: InputBorder.none,
                labelText: email,
                icon: Icon(
                  icon,
                  color: Colors.black38,
                ),
                labelStyle: const TextStyle(
                    fontSize: 15.0,
                    fontFamily: 'Sans',
                    letterSpacing: 0.3,
                    color: Colors.black38,
                    fontWeight: FontWeight.w600)),
            keyboardType: inputType,
          ),
        ),
      ),
    );
  }
}

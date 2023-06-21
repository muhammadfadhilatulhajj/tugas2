// ignore_for_file: use_build_context_synchronously

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:langlung/login.dart';

class PhoneLogin extends StatelessWidget {
  const PhoneLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Auth',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AuthScreen(),
    );
  }
}

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  AuthScreenState createState() => AuthScreenState();
}

class AuthScreenState extends State<AuthScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _smsCodeController = TextEditingController();

  String? _verificationId;

  Future<void> _verifyPhoneNumber() async {
    try {
      verificationCompleted(PhoneAuthCredential credential) async {
        await _auth.signInWithCredential(credential);
        // Phone number sign-in successful, perform additional actions if needed
        if (kDebugMode) {
          print('Phone number sign-in successful');
        }
      }

      verificationFailed(FirebaseAuthException e) {
        // Phone number verification failed, display an error message
        if (kDebugMode) {
          print('Phone number verification failed: ${e.message}');
        }
      }

      codeSent(String verificationId, int? resendToken) {
        setState(() {
          _verificationId = verificationId;
        });
      }

      codeAutoRetrievalTimeout(String verificationId) {
        setState(() {
          _verificationId = verificationId;
        });
      }

      await _auth.verifyPhoneNumber(
        phoneNumber: _phoneNumberController.text,
        verificationCompleted: verificationCompleted,
        verificationFailed: verificationFailed,
        codeSent: codeSent,
        codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
      );
    } catch (e) {
      // Phone number verification failed, display an error message
      if (kDebugMode) {
        print('Error: $e');
      }
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Phone Number Verification Error'),
            content: Text(e.toString()),
            actions: <Widget>[
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  Future<void> _signInWithPhoneNumber() async {
    try {
      final AuthCredential credential = PhoneAuthProvider.credential(
        verificationId: _verificationId!,
        smsCode: _smsCodeController.text,
      );

      await _auth.signInWithCredential(credential);
      // Phone number sign-in successful, perform additional actions if needed
      if (kDebugMode) {
        print('Phone number sign-in successful');
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const Login()));
      }
    } catch (e) {
      // Phone number sign-in failed, display an error message
      if (kDebugMode) {
        print('Error: $e');
      }
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Phone Number Sign-In Error'),
            content: Text(e.toString()),
            actions: <Widget>[
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase Auth'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _phoneNumberController,
              decoration: const InputDecoration(
                labelText: 'Phone Number',
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: _verifyPhoneNumber,
              child: const Text('Verify Phone Number'),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _smsCodeController,
              decoration: const InputDecoration(
                labelText: 'SMS Code',
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: _signInWithPhoneNumber,
              child: const Text('Sign In'),
            ),
          ],
        ),
      ),
    );
  }
}

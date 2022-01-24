// @dart=2.9
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:sa/login.dart';
import 'package:sa/pages/forgetpassword.dart';
import 'package:sa/utils/reusable.dart';

class Settingss extends StatelessWidget {
  const Settingss({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String useremail;
    bool emailvarify;
    useremail = FirebaseAuth.instance.currentUser.email;
    emailvarify = FirebaseAuth.instance.currentUser.emailVerified;
    return Scaffold(
        backgroundColor: Colors.pink[100],
        appBar: AppBar(
          backgroundColor: Colors.red[300],
          title: reusabletext("Settings", 30, Colors.white),
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              const SizedBox(
                height: 50,
              ),
              Text('Email: $useremail',
                  style: GoogleFonts.comfortaa(
                      textStyle:
                          const TextStyle(fontSize: 20, color: Colors.brown))),
              Text('Email varification: $emailvarify',
                  style: GoogleFonts.comfortaa(
                      textStyle:
                          const TextStyle(fontSize: 20, color: Colors.brown))),
              const SizedBox(
                height: 350,
              ),
              GestureDetector(
                  child: firebaaseButton(context, "Sign Out", () {
                FirebaseAuth.instance.signOut().then(
                  (value) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Login()));
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Signed Out Sucessfully",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                      duration: Duration(seconds: 5),
                      backgroundColor: Colors.redAccent,
                    ));
                  },
                );
              })),
              GestureDetector(
                  child: firebaaseButton(context, "Delete Account", () {
                FirebaseAuth.instance.currentUser.delete().then(
                  (value) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Login()));
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("User Deleted",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                      duration: Duration(seconds: 5),
                      backgroundColor: Colors.redAccent,
                    ));
                  },
                ).onError((error, stackTrace) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("User Deleted",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                    duration: Duration(seconds: 5),
                    backgroundColor: Colors.redAccent,
                  ));
                });
              })),
              firebaaseButton(
                context,
                "Reset Password",
                () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgetPassword()));
                },
              )
            ])));
  }
}

// @dart=2.9
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:sa/login.dart';
import 'package:sa/pages/forgetpassword.dart';
import 'package:sa/utils/reusable.dart';

class Settings extends StatelessWidget {
  const Settings({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                height: 400,
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
              // if (localStorage != null)
              //   Padding(
              //     padding: const EdgeInsets.all(15.0),
              //     child: Text(
              //       "User Logged in!!! ->  Email Id: ${localStorage.get('email')}  Password: ${localStorage.get('password')}",
              //       style: const TextStyle(fontSize: 20),
              //     ),
              //   ),
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

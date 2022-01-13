// ignore_for_file: avoid_print, prefer_const_constructors

// import 'package:firebase_auth/firebase_auth.dart';
import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:sa/homepage.dart';

import 'package:sa/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:sa/utils/reusable.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _userNameTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(children: [
            const Text(
              "Sign Up",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 170.0),
                child: logoWidget2(
                  "assets/images/logo.png",
                ))
          ])),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            hexStringColor("000001"),
            hexStringColor("4d1521"),
            hexStringColor("63133b"),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 30,
                ),
                reusableTextField(
                    "Enter UserName",
                    Icons.person_outline,
                    false,
                    _userNameTextController,
                    "",
                    "Please Enter Your UserName",
                    "Please Enter a valid UserName"),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField(
                    "Enter Email Id",
                    Icons.person_outline,
                    false,
                    _emailTextController,
                    "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]",
                    "Please Enter Your Email",
                    "Please Enter a valid email"),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField(
                    "Enter Password (minimum 6 characters)",
                    Icons.lock_outlined,
                    true,
                    _passwordTextController,
                    "r'^.{6,}\$'",
                    "Password is required for login",
                    "Enter Valid Password(Min. 6 Character)"),
                const SizedBox(
                  height: 20,
                ),
                firebaaseButton(context, "Sign Up", () {
                  FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text)
                      .then((value) {
                    SnackBar(
                      content: Text("Registered Sucessfully",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                      duration: Duration(seconds: 5),
                      backgroundColor: Colors.black,
                    );
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  }).onError((error, stackTrace) {
                    String err = (" Error: ${error.toString()}");
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(err,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                        duration: Duration(seconds: 5),
                        backgroundColor: Colors.black,
                      ),
                    );
                  });
                })
              ],
            ),
          ))),
    );
  }
}

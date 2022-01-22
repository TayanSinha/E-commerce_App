// ignore_for_file: prefer_const_constructors, unused_field, non_constant_identifier_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sa/homepage.dart';
import 'package:sa/pages/forgetpassword.dart';
import 'package:sa/register.dart';
import 'package:sa/utils/color.dart';
import 'package:sa/utils/reusable.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/logo.png"),
                SizedBox(
                  height: 30,
                ),
                reusableTextField(
                    "Enter Email Id",
                    Icons.person_outline,
                    false,
                    _emailTextController,
                    "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]",
                    "Please Enter Your Email",
                    "Please Enter a valid email"),
                SizedBox(
                  height: 10,
                ),
                reusableTextField(
                    "Enter Password",
                    Icons.lock_outline,
                    true,
                    _passwordTextController,
                    "r'^.{6,}\$'",
                    "Password is required for login",
                    "Enter Valid Password(Min. 6 Character)"),
                SizedBox(
                  height: 5,
                ),
                forgotPassword(context),
                firebaaseButton(context, "Sign In", () async {
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text)
                      .then((value) async {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) => HomePage()),
                        (Route<dynamic> route) => false);

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Signed In Sucessfully",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                      duration: Duration(seconds: 5),
                      backgroundColor: Colors.red[300],
                    ));
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
                        backgroundColor: Colors.red[300],
                      ),
                    );
                  });
                }),
                signUpOption(),
                SizedBox(height: 30)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Dont have account?",
          style: TextStyle(color: Colors.white70),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Register()));
          },
          child: Text(
            " Sign Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  Widget forgotPassword(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 35,
      alignment: Alignment.bottomRight,
      child: TextButton(
        child: Text(
          "forget password?",
          style: TextStyle(color: Colors.white70),
          textAlign: TextAlign.right,
        ),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => ForgetPassword())),
      ),
    );
  }
}

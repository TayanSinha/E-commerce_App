// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unused_import, non_constant_identifier_names
// @dart=2.9
import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animations/animations.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sa/homepage.dart';
import 'package:sa/login.dart';
import 'package:sa/pages/electronics.dart';
import 'package:sa/pages/medicine.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ERoyalMart',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SecondClass(),
    );
  }
}

class SecondClass extends StatefulWidget {
  @override
  _SecondClassState createState() => _SecondClassState();
}

class _SecondClassState extends State<SecondClass>
    with TickerProviderStateMixin {
  AnimationController scaleController;
  Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    scaleController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 600),
    )..addStatusListener(
        (status) {
          if (status == AnimationStatus.completed) {
            Navigator.of(context).pushReplacement(
              PageTransition(
                type: PageTransitionType.bottomToTop,
                child: Welcome(),
              ),
            );
            Timer(
              Duration(milliseconds: 700),
              () {
                scaleController.reset();
              },
            );
          }
        },
      );

    scaleAnimation =
        Tween<double>(begin: 0.0, end: 12).animate(scaleController);

    Timer(Duration(seconds: 4), () {
      setState(() {
        scaleController.forward();
      });
    });
  }

  @override
  void dispose() {
    scaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: DefaultTextStyle(
          style: TextStyle(fontSize: 30.0),
          child: AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(
                'E-Royal',
                textStyle: GoogleFonts.indieFlower(
                    textStyle: TextStyle(fontSize: 50, color: Colors.white)),
                speed: Duration(milliseconds: 150),
              ),
              TyperAnimatedText(
                ' Mart',
                textStyle: GoogleFonts.indieFlower(
                    textStyle: TextStyle(fontSize: 50, color: Colors.yellow)),
                speed: Duration(milliseconds: 150),
              ),
            ],
            isRepeatingAnimation: false,
            repeatForever: false,
            displayFullTextOnTap: false,
          ),
        ),
      ),
    );
  }
}

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Scaffold(
                backgroundColor: Colors.black,
                body: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Image.asset(
                        "assets/images/welbg.jpg",
                        fit: BoxFit.contain,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Column(children: [
                        Text("E-Royal ",
                            style: GoogleFonts.indieFlower(
                                textStyle: TextStyle(
                                    fontSize: 60, color: Colors.white))),
                        Text("Mart",
                            style: GoogleFonts.indieFlower(
                                textStyle:
                                    TextStyle(fontSize: 60, color: Colors.red)))
                      ]),
                      Row(
                        children: [
                          SizedBox(
                            width: 150,
                            height: 200,
                          ),
                          GestureDetector(
                            child: Text(
                              "Get Started",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()));
                            },
                          ),
                          IconButton(
                              color: Colors.white,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Login()));
                              },
                              icon: const Icon(
                                Icons.arrow_forward,
                                size: 15,
                              )),
                        ],
                      ),
                    ],
                  ),
                ))));
  }
}

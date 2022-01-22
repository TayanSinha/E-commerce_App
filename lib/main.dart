// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unused_import, non_constant_identifier_names, avoid_print
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
import 'package:sa/register.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
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

String user;

class SecondClass extends StatefulWidget {
  @override
  _SecondClassState createState() => _SecondClassState();
}

class _SecondClassState extends State<SecondClass>
    with TickerProviderStateMixin {
  AnimationController scaleController;
  Animation<double> scaleAnimation;

  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    user = FirebaseAuth.instance.currentUser.toString();

    print(user);
    if (user != null) {
      MaterialPageRoute(builder: (context) => HomePage());
    } else {
      MaterialPageRoute(builder: (context) => Login());
    }
    //hhhhh
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
        backgroundColor: Colors.black54,
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
        ));
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
                              if (user == 'null') {
                                print("null");
                                Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                        builder: (context) => Login()),
                                    (Route<dynamic> route) => false);
                              } else {
                                print("not null");
                                Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()),
                                    (Route<dynamic> route) => false);
                              }
                            },
                          ),
                          IconButton(
                              color: Colors.white,
                              onPressed: () {
                                if (user == 'null') {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Login()));
                                } else {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomePage()));
                                }
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

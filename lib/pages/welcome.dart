// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sa/homepage.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/background2.jpg"),
                    fit: BoxFit.cover)),
            child: Center(
              child: Column(children: <Widget>[
                Text(
                  "WELCOME",
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.purple,
                  child: IconButton(
                      color: Colors.white,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      },
                      icon: const Icon(
                        Icons.arrow_forward,
                      )),
                )
              ]),
            )));
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sa/homepage.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Scaffold(
          backgroundColor: Colors.black,
          body: Center(
              child: Column(
            children: <Widget>[
              Image.asset(
                "assets/images/welbg.jpg",
                fit: BoxFit.contain,
              ),
              SizedBox(
                height: 15,
              ),
              Row(children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  "AITU \n",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                Text(
                  "STORES\n",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                  ),
                ),
              ]),
              Row(
                children: [
                  SizedBox(
                    width: 155,
                  ),
                  GestureDetector(
                    child: Text(
                      "Get Started",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                  ),
                  IconButton(
                      color: Colors.white,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      },
                      icon: const Icon(
                        Icons.arrow_forward,
                        size: 15,
                      )),
                ],
              ),
            ],
          )),
        )));
  }
}

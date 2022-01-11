// ignore_for_file: prefer_const_constructors_in_immutables, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sa/pages/checkoutpage.dart';

class Clothes extends StatefulWidget {
  Clothes({Key? key}) : super(key: key);

  @override
  _ClothesState createState() => _ClothesState();
}

class _ClothesState extends State<Clothes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // SliverAppBar is declared in Scaffold.body, in slivers of a
      // CustomScrollView.
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text("Clothes"),
              background: Image.asset(
                'assets/images/cloth.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          // If the main content is a list, use SliverList instead.
          SliverFillRemaining(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Card(
                    child: SizedBox(
                        height: 500,
                        width: 350,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              child: Image.asset(
                                "assets/images/clo1.jpeg",
                                width: 200,
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Checkout()));
                              },
                            ),
                            Text(
                              "Polycotton Printed Shirt Fabric \n ₹389 (incl. of all taxes)",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.blue),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Card(
                    child: SizedBox(
                        height: 500,
                        width: 350,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              child: Image.asset(
                                "assets/images/clo2.jpeg",
                                width: 300,
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Checkout()));
                              },
                            ),
                            Text(
                              "Women A-line Pink Dress \n ₹489 (incl. of all taxes)",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.blue),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Card(
                    child: SizedBox(
                        height: 500,
                        width: 350,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              child: Image.asset(
                                "assets/images/clo3.jpeg",
                                width: 200,
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Checkout()));
                              },
                            ),
                            Text(
                              "Jizo SPIDERMAN Kids Costume Wear \n ₹315 (incl. of all taxes)",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.blue),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Card(
                    child: SizedBox(
                        height: 500,
                        width: 350,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              child: Image.asset(
                                "assets/images/clo4.jpeg",
                                width: 200,
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Checkout()));
                              },
                            ),
                            Text(
                              "Girls Lehenga Choli Ethnic Wear \n ₹480 (incl. of all taxes)",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.blue),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Card(
                    child: SizedBox(
                        height: 500,
                        width: 350,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              child: Image.asset(
                                "assets/images/clo5.jpeg",
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Checkout()));
                              },
                            ),
                            Text(
                              "Skull cap with neck scarf Cap \n ₹235 (incl. of all taxes)",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.blue),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Card(
                    child: SizedBox(
                        height: 500,
                        width: 350,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              child: Image.asset(
                                "assets/images/clo6.jpeg",
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Checkout()));
                              },
                            ),
                            Text(
                              "Girls Lehenga Choli Ethnic Wear \n ₹999 (incl. of all taxes)",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.blue),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Card(
                    child: SizedBox(
                        height: 500,
                        width: 350,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              child: Image.asset(
                                "assets/images/clo7.jpeg",
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Checkout()));
                              },
                            ),
                            Text(
                              "Cotton Viscose Blend Solid Trouser Fabric \n ₹546 (incl. of all taxes)",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.blue),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Card(
                    child: SizedBox(
                        height: 500,
                        width: 350,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              child: Image.asset(
                                "assets/images/clo8.jpeg",
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Checkout()));
                              },
                            ),
                            Text(
                              "Cotton Self Design Salwar Suit Material \n ₹697 (incl. of all taxes)",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.blue),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

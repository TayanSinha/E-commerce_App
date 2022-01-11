// ignore_for_file: prefer_const_constructors_in_immutables, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class Grocery extends StatefulWidget {
  Grocery({Key? key}) : super(key: key);

  @override
  _GroceryState createState() => _GroceryState();
}

class _GroceryState extends State<Grocery> {
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
              title: const Text("Grocery"),
              background: Image.asset(
                'assets/images/grocery.jpg',
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
                                "assets/images/gro1.jpeg",
                                width: 200,
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Grocery()));
                              },
                            ),
                            Text(
                              "Dukes Cheesy Nibbles Salted Biscuit  \n ₹389 (incl. of all taxes)",
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
                                "assets/images/gro2.jpeg",
                                width: 300,
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Grocery()));
                              },
                            ),
                            Text(
                              "Happilo Premium Californian  \n ₹49 (incl. of all taxes)",
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
                                "assets/images/gro3.jpeg",
                                width: 200,
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Grocery()));
                              },
                            ),
                            Text(
                              "WOW SKIN SCIENCE Ultimate Vitamin C \n ₹515 (incl. of all taxes)",
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
                                "assets/images/gro4.jpeg",
                                width: 100,
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Grocery()));
                              },
                            ),
                            Text(
                              "Fortune Kachi Ghani Mustard Oil \n ₹80 (incl. of all taxes)",
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
                              child: Image.asset("assets/images/gro5.jpeg",
                                  width: 200),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Grocery()));
                              },
                            ),
                            Text(
                              "Naturoz Popular California Almonds \n ₹435 (incl. of all taxes)",
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
                                "assets/images/gro6.jpeg",
                                width: 200,
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Grocery()));
                              },
                            ),
                            Text(
                              "MADHUR Pure and Hygienic Sugar \n ₹99 (incl. of all taxes)",
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
                                "assets/images/gro7.jpeg",
                                width: 200,
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Grocery()));
                              },
                            ),
                            Text(
                              "Parachute Coconut Oil Can  \n ₹106 (incl. of all taxes)",
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
                                "assets/images/gro8.jpeg",
                                width: 100,
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Grocery()));
                              },
                            ),
                            Text(
                              "Kesh King Ayurvedic Scal & Hair Shampoo  \n ₹397 (incl. of all taxes)",
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

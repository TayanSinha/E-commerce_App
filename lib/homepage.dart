// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables,, import_of_legacy_library_into_null_safe

import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sa/login.dart';
import 'package:sa/pages/aboutus.dart';
import 'package:sa/pages/clothes.dart';
import 'package:sa/pages/electronics.dart';
import 'package:sa/pages/grocery.dart';
import 'package:sa/pages/medicine.dart';
import 'package:sa/pages/search.dart';
import 'package:sa/pages/settings.dart';
import 'package:sa/utils/reusable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final drawerHeader = UserAccountsDrawerHeader(
      accountName: reusabletext("E-Royal Mart", 20, Colors.white),
      accountEmail:
          reusabletext("eroyalmartsupport@yahoo.com", 20, Colors.white),
      decoration: BoxDecoration(color: Colors.red[300]),
      currentAccountPicture: CircleAvatar(
        backgroundColor: Colors.black,
        child: logoWidget2("assets/images/logo.png"),
      ),
    );
    final drawerItems = ListView(
      children: <Widget>[
        drawerHeader,
        SizedBox(
          height: 50,
        ),
        ListTile(
            title: Text('My Orders',
                style: GoogleFonts.comfortaa(
                    textStyle: TextStyle(fontSize: 25, color: Colors.black))),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Your OrderList is Empty",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                duration: Duration(seconds: 5),
                backgroundColor: Colors.red[300],
              ));
            }),
        SizedBox(
          height: 20,
        ),
        ListTile(
            title: Text('About Us',
                style: GoogleFonts.comfortaa(
                    textStyle: TextStyle(fontSize: 25, color: Colors.black))),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Aboutus()))),
        SizedBox(
          height: 20,
        ),
        ListTile(
            title: Text('Settings',
                style: GoogleFonts.comfortaa(
                    textStyle: TextStyle(fontSize: 25, color: Colors.black))),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Settingss()))),
        SizedBox(
          height: 20,
        ),
        ListTile(
            title: Text('Sign Out',
                style: GoogleFonts.comfortaa(
                    textStyle: TextStyle(fontSize: 25, color: Colors.black))),
            onTap: () {
              FirebaseAuth.instance.signOut().then(
                (value) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Signed Out Sucessfully",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                    duration: Duration(seconds: 5),
                    backgroundColor: Colors.red[300],
                  ));
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Login()));
                },
              );
            }),
      ],
    );

    CollectionReference homepage =
        FirebaseFirestore.instance.collection('homepage');
    return Scaffold(
        backgroundColor: Colors.yellow[50],
        appBar: AppBar(
            backgroundColor: Colors.red[300],
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('E-Royal Mart',
                      style: GoogleFonts.indieFlower(
                          textStyle:
                              TextStyle(fontSize: 30, color: Colors.white))),
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Search()));
                    },
                  )
                ])),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: FutureBuilder(
            future: homepage.doc('QMj48L7eoTkeq1UEldUb').get(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData && !snapshot.data.exists) {
                return Text("Document does not exist");
              }
              if (!snapshot.hasData) {
                return Column(
                  children: const [
                    Text(
                      "Loading... Please wait",
                      style: TextStyle(fontSize: 30),
                    ),
                    Icon(
                      Icons.do_not_touch,
                      size: 50,
                    ),
                  ],
                );
              }
              Map<String, dynamic> homepage =
                  snapshot.data.data() as Map<String, dynamic>;

              final List<String> imagesList = [
                '${homepage['dealsforyou1']}',
                '${homepage['dealsforyou2']}',
                '${homepage['dealsforyou3']}',
                '${homepage['dealsforyou4']}',
              ];
              return Column(children: [
                Row(children: [
                  SizedBox(
                    width: 30,
                  ),
                  Card(
                    child: SizedBox(
                        height: 170,
                        width: 170,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              child: Image.asset(
                                "assets/images/electronic.jpeg",
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Electronics()));
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("ELECTRONICS",
                                style: GoogleFonts.comfortaa(
                                    textStyle: TextStyle(
                                        fontSize: 15, color: Colors.blue))),
                          ],
                        )),
                  ),
                  Card(
                    child: SizedBox(
                        height: 170,
                        width: 170,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              child: Image.asset(
                                "assets/images/cloth.jpg",
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Clothes()));
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("CLOTHES",
                                style: GoogleFonts.comfortaa(
                                    textStyle: TextStyle(
                                        fontSize: 15, color: Colors.blue))),
                          ],
                        )),
                  ),
                ]),
                Row(children: [
                  SizedBox(
                    width: 30,
                  ),
                  Card(
                    child: SizedBox(
                        height: 170,
                        width: 170,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              child: Image.asset(
                                "assets/images/grocery.jpg",
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Grocery()));
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("GROCERY",
                                style: GoogleFonts.comfortaa(
                                    textStyle: TextStyle(
                                        fontSize: 15, color: Colors.blue))),
                          ],
                        )),
                  ),
                  Card(
                    child: SizedBox(
                        height: 170,
                        width: 170,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              child: Image.asset(
                                "assets/images/medicine.jpg",
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Medicine()));
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("MEDICINE",
                                style: GoogleFonts.comfortaa(
                                    textStyle: TextStyle(
                                        fontSize: 15, color: Colors.blue))),
                          ],
                        )),
                  ),
                ]),
                Card(
                  child: SizedBox(
                    height: 400,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Deal of the Day,",
                          style: GoogleFonts.comfortaa(
                              textStyle:
                                  TextStyle(fontSize: 27, color: Colors.red)),
                        ),
                        SizedBox(
                          height: 0,
                        ),
                        GestureDetector(
                          child: Image.network(
                            ("${homepage['dealofthedayimg']}"),
                            width: 400,
                            height: 250,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Electronics()));
                          },
                        ),
                        Text("${homepage['dealoftheday']}",
                            style: GoogleFonts.comfortaa(
                                textStyle: TextStyle(
                                    fontSize: 15, color: Colors.black))),
                        Text("${homepage['dealoftheday2']}",
                            style: GoogleFonts.comfortaa(
                                textStyle: TextStyle(
                                    fontSize: 15, color: Colors.blue)))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 19,
                ),
                Text(
                  "Deals For You",
                  style: GoogleFonts.comfortaa(
                      textStyle: TextStyle(fontSize: 27, color: Colors.red)),
                ),
                SizedBox(
                  height: 19,
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    viewportFraction: 0.6,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 100),
                    enlargeCenterPage: true,
                    autoPlay: true,
                  ),
                  items: imagesList
                      .map(
                        (item) => Center(
                          child: Image.network(
                            item,
                            fit: BoxFit.cover,
                            width: 300,
                            height: 400,
                          ),
                        ),
                      )
                      .toList(),
                ),
                SizedBox(
                  height: 29,
                ),
                Card(
                  child: SizedBox(
                    height: 400,
                    width: 400,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Text("Up to 42% off | Clothes & appliances",
                            style: GoogleFonts.comfortaa(
                                textStyle: TextStyle(
                                    fontSize: 15, color: Colors.red))),
                        SizedBox(
                          height: 25,
                        ),
                        GestureDetector(
                          child: Image.asset(
                            "assets/images/cloth2.jpg",
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Clothes()));
                          },
                        ),
                        Row(children: [
                          SizedBox(
                            width: 50,
                            height: 70,
                          ),
                          Icon(
                            Icons.card_giftcard,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "No Cost EMI",
                            style: GoogleFonts.comfortaa(
                                textStyle: TextStyle(
                                    fontSize: 15, color: Colors.green)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.card_travel,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Sheduled Delivery",
                            style: GoogleFonts.comfortaa(
                                textStyle: TextStyle(
                                    fontSize: 15, color: Colors.green)),
                          )
                        ])
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Interesting Finds",
                  style: GoogleFonts.comfortaa(
                      textStyle: TextStyle(fontSize: 30, color: Colors.red)),
                ),
                Row(children: [
                  SizedBox(
                    height: 10,
                    width: 20,
                  ),
                  Card(
                    child: SizedBox(
                        height: 200,
                        width: 180,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              child: Image.asset(
                                "assets/images/if.jpg",
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Electronics()));
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Mobile Stands",
                                style: GoogleFonts.comfortaa(
                                    textStyle: TextStyle(
                                        fontSize: 25, color: Colors.black))),
                            Text(
                              "From ₹299 ",
                              style: GoogleFonts.comfortaa(
                                  textStyle: TextStyle(color: Colors.green)),
                            )
                          ],
                        )),
                  ),
                  Card(
                    child: SizedBox(
                        height: 200,
                        width: 180,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              child: Image.asset(
                                "assets/images/if2.jpg",
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Electronics()));
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Furniture",
                                style: GoogleFonts.comfortaa(
                                    textStyle: TextStyle(
                                        fontSize: 25, color: Colors.black))),
                            Text(
                              "Up to 80% off ",
                              style: GoogleFonts.comfortaa(
                                  textStyle: TextStyle(color: Colors.green)),
                            )
                          ],
                        )),
                  ),
                ]),
                Row(children: [
                  SizedBox(
                    height: 10,
                    width: 20,
                  ),
                  Card(
                    child: SizedBox(
                        height: 200,
                        width: 180,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              child: Image.asset(
                                "assets/images/if3.jpg",
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Medicine()));
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Medicines",
                                style: GoogleFonts.comfortaa(
                                    textStyle: TextStyle(
                                        fontSize: 25, color: Colors.black))),
                            Text(
                              "At you doresteps 24x7 ",
                              style: GoogleFonts.comfortaa(
                                  textStyle: TextStyle(color: Colors.green)),
                            )
                          ],
                        )),
                  ),
                  Card(
                    child: SizedBox(
                        height: 200,
                        width: 180,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              child: Image.asset(
                                "assets/images/if4.jpg",
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Grocery()));
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Vegitable",
                                style: GoogleFonts.comfortaa(
                                    textStyle: TextStyle(
                                        fontSize: 25, color: Colors.black))),
                            Text(
                              "Delivery Free for first order ",
                              style: GoogleFonts.comfortaa(
                                  textStyle: TextStyle(color: Colors.green)),
                            ),
                          ],
                        )),
                  ),
                ]),
              ]);
            },
          ),
        ),
        drawer: Drawer(
            child: Container(
          color: Colors.yellow[50],
          child: drawerItems,
        )));
  }
}

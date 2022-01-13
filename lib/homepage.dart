// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables,

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

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final drawerHeader = UserAccountsDrawerHeader(
      accountName: reusabletext("E-Royal Mart", 20, Colors.white),
      accountEmail:
          reusabletext("eroyalmartsupport@yahoo.com", 20, Colors.white),
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
                style: GoogleFonts.indieFlower(
                    textStyle: TextStyle(fontSize: 25, color: Colors.black))),
            onTap: () {
              SnackBar(
                content: Text("Your OrderList is Empty",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                duration: Duration(seconds: 5),
                backgroundColor: Colors.black,
              );
            }),
        SizedBox(
          height: 20,
        ),
        ListTile(
            title: Text('About Us',
                style: GoogleFonts.indieFlower(
                    textStyle: TextStyle(fontSize: 25, color: Colors.black))),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Aboutus()))),
        SizedBox(
          height: 20,
        ),
        ListTile(
            title: Text('Settings',
                style: GoogleFonts.indieFlower(
                    textStyle: TextStyle(fontSize: 25, color: Colors.black))),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Settings()))),
        SizedBox(
          height: 20,
        ),
        ListTile(
            title: Text('Sign Out',
                style: GoogleFonts.indieFlower(
                    textStyle: TextStyle(fontSize: 25, color: Colors.black))),
            onTap: () {
              FirebaseAuth.instance.signOut().then(
                (value) {
                  SnackBar(
                    content: Text("Signed Out Sucessfully",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                    duration: Duration(seconds: 5),
                    backgroundColor: Colors.black,
                  );
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Login()));
                },
              );
            }),
      ],
    );
    final List<String> imagesList = [
      'assets/images/elec3.jpg',
      'assets/images/gro2.jpeg',
      'assets/images/clo6.jpeg',
      'assets/images/med4.jpg',
    ];
    return Scaffold(
        backgroundColor: Colors.yellow[50],
        appBar: AppBar(
            backgroundColor: Colors.red,
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
            child: Column(children: [
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
                              style: GoogleFonts.indieFlower(
                                  textStyle: TextStyle(
                                      fontSize: 20, color: Colors.blue))),
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
                              style: GoogleFonts.indieFlower(
                                  textStyle: TextStyle(
                                      fontSize: 20, color: Colors.blue))),
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
                              style: GoogleFonts.indieFlower(
                                  textStyle: TextStyle(
                                      fontSize: 20, color: Colors.blue))),
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
                              style: GoogleFonts.indieFlower(
                                  textStyle: TextStyle(
                                      fontSize: 20, color: Colors.blue))),
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
                        style: GoogleFonts.indieFlower(
                            textStyle:
                                TextStyle(fontSize: 30, color: Colors.red)),
                      ),
                      SizedBox(
                        height: 0,
                      ),
                      GestureDetector(
                        child: Image.asset(
                          "assets/images/laptop.png",
                          height: 250,
                          width: 400,
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Electronics()));
                        },
                      ),
                      Text("MRP:₹45,990.00 (Inclusive of all taxes)",
                          style: GoogleFonts.indieFlower(
                              textStyle: TextStyle(
                                  fontSize: 20, color: Colors.black))),
                      Text("(See all details)",
                          style: GoogleFonts.indieFlower(
                              textStyle:
                                  TextStyle(fontSize: 20, color: Colors.blue)))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 19,
              ),
              Text(
                "Deals For You",
                style: GoogleFonts.indieFlower(
                    textStyle: TextStyle(fontSize: 30, color: Colors.red)),
              ),
              SizedBox(
                height: 19,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  viewportFraction: 0.6,
                  autoPlayAnimationDuration: const Duration(milliseconds: 100),
                  enlargeCenterPage: true,
                  autoPlay: true,
                ),
                items: imagesList
                    .map(
                      (item) => Center(
                        child: Image.asset(
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
              // Swiper(
              //   autoplay: true,
              //   scrollDirection: Axis.horizontal,
              //   layout: SwiperLayout.STACK,
              //   itemCount: imageList.length,
              //   pagination:
              //       SwiperPagination(builder: SwiperPagination.fraction),
              //   itemBuilder: (context, index) {
              //     return Image.asset(
              //       imageList[index],
              //       fit: BoxFit.fill,
              //     );
              //   },
              //   itemWidth: 500,
              //   itemHeight: 300,
              // ),

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
                          style: GoogleFonts.indieFlower(
                              textStyle:
                                  TextStyle(fontSize: 25, color: Colors.red))),
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
                          style: GoogleFonts.indieFlower(
                              textStyle:
                                  TextStyle(fontSize: 20, color: Colors.green)),
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
                          style: GoogleFonts.indieFlower(
                              textStyle:
                                  TextStyle(fontSize: 20, color: Colors.green)),
                        )
                      ])
                    ],
                  ),
                ),
              ),
//
              SizedBox(
                height: 20,
              ),
              Text(
                "Interesting Finds",
                style: GoogleFonts.indieFlower(
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
                              style: GoogleFonts.indieFlower(
                                  textStyle: TextStyle(
                                      fontSize: 25, color: Colors.black))),
                          Text(
                            "From ₹299 ",
                            style: GoogleFonts.indieFlower(
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
                              style: GoogleFonts.indieFlower(
                                  textStyle: TextStyle(
                                      fontSize: 25, color: Colors.black))),
                          Text(
                            "Up to 80% off ",
                            style: GoogleFonts.indieFlower(
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
                              style: GoogleFonts.indieFlower(
                                  textStyle: TextStyle(
                                      fontSize: 25, color: Colors.black))),
                          Text(
                            "At you doresteps 24x7 ",
                            style: GoogleFonts.indieFlower(
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
                              style: GoogleFonts.indieFlower(
                                  textStyle: TextStyle(
                                      fontSize: 25, color: Colors.black))),
                          Text(
                            "Delivery Free for first order ",
                            style: GoogleFonts.indieFlower(
                                textStyle: TextStyle(color: Colors.green)),
                          ),
                        ],
                      )),
                ),
              ]),

//
            ])),
        drawer: Drawer(
          child: drawerItems,
        ));
  }
}

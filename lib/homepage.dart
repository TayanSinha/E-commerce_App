// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables,

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sa/login.dart';
import 'package:sa/pages/clothes.dart';
import 'package:sa/pages/electronics.dart';
import 'package:sa/pages/grocery.dart';
import 'package:sa/pages/medicine.dart';
import 'package:sa/pages/search.dart';
import 'package:sa/pages/settings.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const drawerHeader = UserAccountsDrawerHeader(
      accountName: Text('E-Royal Mart'),
      accountEmail: Text('eroyalmartsupport@yahoo.com'),
      currentAccountPicture: CircleAvatar(
        backgroundColor: Colors.white,
        child: Icon(
          Icons.shopping_cart,
          color: Colors.blue,
        ),
      ),
    );
    final drawerItems = ListView(
      children: <Widget>[
        drawerHeader,
        ListTile(
            title: const Text('My Orders'),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Settings()))),
        ListTile(
            title: const Text('About Us'),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Settings()))),
        ListTile(
            title: const Text('Settings'),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Settings()))),
        ListTile(
            title: const Text('Sign Out'),
            onTap: () {
              FirebaseAuth.instance.signOut().then((value) {
                // print("signed Out");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Login()));
              });
            }),
      ],
    );
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.red,
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text('E-Royal Mart'),
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
                            height: 20,
                          ),
                          Text("ELECTRONICS"),
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
                            height: 20,
                          ),
                          Text("CLOTHES"),
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
                            height: 20,
                          ),
                          Text("GROCERY"),
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
                            height: 20,
                          ),
                          Text("MEDICINE"),
                        ],
                      )),
                ),
              ]),
//               SizedBox(
//                 height: 50,
//               ),
// //carousel
//               SizedBox(
//                 height: 50,
//               ),
              Card(
                child: SizedBox(
                  height: 400,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Deal of the Day",
                        style: (TextStyle(fontSize: 25, fontFamily: "")),
                      ),
                      SizedBox(
                        height: 0,
                      ),
                      GestureDetector(
                        child: Image.asset(
                          "assets/images/laptop.png",
                          height: 300,
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Electronics()));
                        },
                      ),
                      Text("MRP:₹45,990.00 (Inclusive of all taxes)"),
                      Text(
                        "See all details",
                        style: (TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline)),
                      )
                    ],
                  ),
                ),
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
                      Text(
                        "Up to 42% off | Clothes & appliances",
                        style: (TextStyle(fontSize: 20, fontFamily: "")),
                      ),
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
                          width: 80,
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
                          style: TextStyle(color: Colors.green),
                        ),
                        SizedBox(
                          width: 20,
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
                          style: TextStyle(color: Colors.green),
                        )
                      ])
                    ],
                  ),
                ),
              ),
//
              SizedBox(
                height: 40,
              ),
              Text(
                "Interesting Finds",
                style: TextStyle(fontSize: 25, color: Colors.red),
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
                            height: 20,
                          ),
                          Text("Mobile Stands"),
                          Text(
                            "From ₹299 ",
                            style: TextStyle(color: Colors.green),
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
                            height: 20,
                          ),
                          Text("Furniture"),
                          Text(
                            "Up to 80% off ",
                            style: TextStyle(color: Colors.green),
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
                            height: 20,
                          ),
                          Text("Medicines"),
                          Text(
                            "At you doresteps 24x7 ",
                            style: TextStyle(color: Colors.green),
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
                            height: 20,
                          ),
                          Text("Vegitable"),
                          Text(
                            "Delivery Free for first order ",
                            style: TextStyle(color: Colors.green),
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

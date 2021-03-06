// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use, prefer_const_constructors_in_immutables

// import 'dart:html';

import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  Checkout({Key? key}) : super(key: key);

  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[300],
          title: Text("Select Your Payment Method"),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Select a way to pay",
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  child: SizedBox(
                      height: 600,
                      child: Column(
                        children: [
                          Card(
                            child: SizedBox(
                                height: 50,
                                width: 350,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    // Icon(Icons.rounded_corner),
                                    Column(
                                      children: [
                                        Text(
                                          "UPI/NetBanking",
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.blue),
                                        ),
                                        Text(
                                          "(Pay direct from bank)",
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.blue),
                                        ),
                                      ],
                                    )
                                  ],
                                )),
                          ),
                          Card(
                            child: SizedBox(
                                height: 50,
                                width: 350,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    // Icon(Icons.rounded_corner),
                                    Column(
                                      children: [
                                        Text(
                                          "Add Debit/Credit/ATM Card",
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.blue),
                                        ),
                                        Text(
                                          "(You can save your MasterCard and VISA cards)",
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.blue),
                                        ),
                                      ],
                                    )
                                  ],
                                )),
                          ),
                          Card(
                            child: SizedBox(
                                height: 50,
                                width: 350,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    // Icon(Icons.rounded_corner),
                                    Column(
                                      children: [
                                        Text(
                                          "EMI",
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.blue),
                                        ),
                                        Text(
                                          "(Currently Unavailable)",
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.blue),
                                        ),
                                      ],
                                    )
                                  ],
                                )),
                          ),
                          Card(
                            child: SizedBox(
                                height: 50,
                                width: 350,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    // Icon(Icons.rounded_corner),
                                    Column(
                                      children: [
                                        Text(
                                          "Pay on Delivery",
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.blue),
                                        ),
                                        Text(
                                          "(Pay digitally with SMS Pay Link.)",
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.blue),
                                        ),
                                      ],
                                    )
                                  ],
                                )),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Card(
                            child: SizedBox(
                                height: 30,
                                width: 350,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.arrow_drop_down),
                                    Column(
                                      children: [
                                        Text(
                                          "Add Gift Card or Promo Coad",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black),
                                        ),
                                      ],
                                    )
                                  ],
                                )),
                          ),
                          SizedBox(
                            height: 80,
                          ),
                          SizedBox(
                            width: 200,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.red[300],
                                onPrimary: Colors.white,
                              ),
                              onPressed: () {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text("Under Construction",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                  duration: Duration(seconds: 5),
                                  backgroundColor: Colors.red[300],
                                ));
                              },
                              child: Text(
                                'Continue',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          )
                        ],
                      )),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Under Construction",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                      duration: Duration(seconds: 5),
                      backgroundColor: Colors.black,
                    ));
                  },
                )
              ],
            ),
          ),
        ));
  }
}

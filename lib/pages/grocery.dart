// ignore_for_file: prefer_const_constructors_in_immutables, avoid_unnecessary_containers, prefer_const_constructors, use_key_in_widget_constructors
// @dart=2.9

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sa/pages/checkoutpage.dart';

// ignore: must_be_immutable
class Grocery extends StatefulWidget {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  _GroceryState createState() => _GroceryState();
}

class _GroceryState extends State<Grocery> {
  @override
  Widget build(BuildContext context) {
    CollectionReference grocerydetail =
        FirebaseFirestore.instance.collection('grocery');
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
          SliverFillRemaining(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: FutureBuilder(
                future: grocerydetail.doc('PBdoo8sMZKcod2ayxCif').get(),
                builder: (BuildContext context,
                    AsyncSnapshot<DocumentSnapshot> snapshot) {
                  if (snapshot.hasData && !snapshot.data.exists) {
                    return Text("Document does not exist");
                  }
                  if (!snapshot.hasData) {
                    return Container(
                        child: Column(
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
                    ));
                  }
                  Map<String, dynamic> grocerydetail =
                      snapshot.data.data() as Map<String, dynamic>;

                  return Column(
                    children: <Widget>[
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
                                  child: Image.network(
                                    ("${grocerydetail['image1']}"),
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
                                  "${grocerydetail['product1']}",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.blue),
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
                                  child: Image.network(
                                      ("${grocerydetail['image2']}"),
                                      width: 300),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Checkout()));
                                  },
                                ),
                                Text(
                                  "${grocerydetail['product2']}",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.blue),
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
                                  child: Image.network(
                                      ("${grocerydetail['image3']}"),
                                      width: 250),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Checkout()));
                                  },
                                ),
                                Text(
                                  "${grocerydetail['product3']}",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.blue),
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
                                  child: Image.network(
                                      ("${grocerydetail['image4']}"),
                                      width: 100),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Checkout()));
                                  },
                                ),
                                Text(
                                  "${grocerydetail['product4']}",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.blue),
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
                                  child: Image.network(
                                      ("${grocerydetail['image5']}"),
                                      width: 300),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Checkout()));
                                  },
                                ),
                                Text(
                                  "${grocerydetail['product5']}",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.blue),
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
                                  child: Image.network(
                                      ("${grocerydetail['image6']}"),
                                      width: 300),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Checkout()));
                                  },
                                ),
                                Text(
                                  " ${grocerydetail['product6']}",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.blue),
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
                                  child: Image.network(
                                      ("${grocerydetail['image7']}"),
                                      width: 300),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Checkout()));
                                  },
                                ),
                                Text(
                                  "${grocerydetail['product7']}",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.blue),
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
                                  child: Image.network(
                                      ("${grocerydetail['image8']}"),
                                      width: 150),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Checkout()));
                                  },
                                ),
                                Text(
                                  "${grocerydetail['product8']}",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.blue),
                                ),
                              ],
                            )),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

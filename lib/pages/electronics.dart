// ignore_for_file: prefer_const_constructors_in_immutables, avoid_unnecessary_containers, prefer_const_constructors, use_key_in_widget_constructors
// @dart=2.9

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sa/pages/checkoutpage.dart';

// ignore: must_be_immutable
class Electronics extends StatefulWidget {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  _ElectronicsState createState() => _ElectronicsState();
}

class _ElectronicsState extends State<Electronics> {
  @override
  Widget build(BuildContext context) {
    CollectionReference elecdetail =
        FirebaseFirestore.instance.collection('electronics');
    return Scaffold(
      // SliverAppBar is declared in Scaffold.body, in slivers of a
      // CustomScrollView.
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text("Electronics"),
              background: Image.asset(
                'assets/images/electronicbackground.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          SliverFillRemaining(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: FutureBuilder(
                future: elecdetail.doc('azv143xeioLShsyIXzUL').get(),
                builder: (BuildContext context,
                    AsyncSnapshot<DocumentSnapshot> snapshot) {
                  if (snapshot.hasData && !snapshot.data.exists) {
                    return Text("Document does not exist");
                  }
                  Map<String, dynamic> elecdetail =
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
                                      ("${elecdetail['image1']}")),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Checkout()));
                                  },
                                ),
                                Text(
                                  "${elecdetail['product1']}",
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
                                      ("${elecdetail['image2']}")),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Checkout()));
                                  },
                                ),
                                Text(
                                  "${elecdetail['product2']}",
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
                                      ("${elecdetail['image3']}")),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Checkout()));
                                  },
                                ),
                                Text(
                                  "${elecdetail['product3']}",
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
                                      ("${elecdetail['image4']}")),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Checkout()));
                                  },
                                ),
                                Text(
                                  "${elecdetail['product4']}",
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
                                      ("${elecdetail['image5']}")),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Checkout()));
                                  },
                                ),
                                Text(
                                  "${elecdetail['product5']}",
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
                                      ("${elecdetail['image6']}")),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Checkout()));
                                  },
                                ),
                                Text(
                                  " ${elecdetail['product6']}",
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
                                      ("${elecdetail['image7']}")),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Checkout()));
                                  },
                                ),
                                Text(
                                  "${elecdetail['product7']}",
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
                                      ("${elecdetail['image8']}")),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Checkout()));
                                  },
                                ),
                                Text(
                                  "${elecdetail['product8']}",
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

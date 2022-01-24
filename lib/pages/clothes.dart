// ignore_for_file: prefer_const_constructors_in_immutables, avoid_unnecessary_containers, prefer_const_constructors, use_key_in_widget_constructors
// @dart=2.9

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sa/pages/checkoutpage.dart';

// ignore: must_be_immutable
class Clothes extends StatefulWidget {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  _ClothesState createState() => _ClothesState();
}

class _ClothesState extends State<Clothes> {
  @override
  Widget build(BuildContext context) {
    CollectionReference clothdetail =
        FirebaseFirestore.instance.collection('cloths');
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
          SliverFillRemaining(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: FutureBuilder(
                future: clothdetail.doc('zByh9blMpow1rWCKobBm').get(),
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
                  Map<String, dynamic> clothdetail =
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
                                    ("${clothdetail['image1']}"),
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
                                  "${clothdetail['cloth1']}",
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
                                      ("${clothdetail['image2']}"),
                                      width: 300),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Checkout()));
                                  },
                                ),
                                Text(
                                  "${clothdetail['cloth2']}",
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
                                      ("${clothdetail['image3']}"),
                                      width: 250),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Checkout()));
                                  },
                                ),
                                Text(
                                  "${clothdetail['cloth3']}",
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
                                      ("${clothdetail['image4']}"),
                                      width: 200),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Checkout()));
                                  },
                                ),
                                Text(
                                  "${clothdetail['cloth4']}",
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
                                      ("${clothdetail['image5']}"),
                                      width: 300),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Checkout()));
                                  },
                                ),
                                Text(
                                  "${clothdetail['cloth5']}",
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
                                      ("${clothdetail['image6']}"),
                                      width: 300),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Checkout()));
                                  },
                                ),
                                Text(
                                  " ${clothdetail['cloth6']}",
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
                                      ("${clothdetail['image7']}"),
                                      width: 300),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Checkout()));
                                  },
                                ),
                                Text(
                                  "${clothdetail['cloth7']}",
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
                                      ("${clothdetail['image8']}"),
                                      width: 300),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Checkout()));
                                  },
                                ),
                                Text(
                                  "${clothdetail['cloth8']}",
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

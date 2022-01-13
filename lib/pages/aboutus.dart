// ignore_for_file: prefer_const_constructors, must_be_immutable

// import 'dart:html';

import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sa/utils/reusable.dart';
import 'package:url_launcher/url_launcher.dart';

class Aboutus extends StatelessWidget {
  final imageList = [
    'assets/images/tayan.png',
    'assets/images/abantika.jpg',
    'assets/images/indrani.jpg',
    'assets/images/uddipta.jpg',
  ];
  final textlist = [
    'Tayan Sinha',
    'Abantika Pandit',
    'Indrani Dey',
    'Uddipta Sarkar'
  ];
  final urllist = [
    'https://www.facebook.com/tayansinha7',
    'https://www.facebook.com/madhusmita.roy.104203',
    'https://www.facebook.com/indrani.dey.3114',
    'https://www.facebook.com/uddipta.sarkar.77'
  ];

  Aboutus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[100],
        appBar: AppBar(
          title: Text("About Us",
              style: GoogleFonts.indieFlower(
                  textStyle: TextStyle(fontSize: 30, color: Colors.white))),
        ),
        body: Column(
          children: [
            SizedBox(height: 40),
            Text("Developers Profile",
                style: GoogleFonts.indieFlower(
                    textStyle: TextStyle(fontSize: 35, color: Colors.black))),
            SizedBox(
              height: 30,
            ),
            Swiper(
              autoplay: true,
              layout: SwiperLayout.STACK,
              itemCount: imageList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Card(
                        color: Colors.yellow[100],
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            GestureDetector(
                              child: CircleAvatar(
                                  backgroundColor: Colors.black87,
                                  radius: 60,
                                  child: Image.asset(
                                    imageList[index],
                                    fit: BoxFit.fitHeight,
                                    height: 180,
                                  )),
                              onTap: () async {
                                String url = urllist[index];
                                if (await canLaunch(url)) {
                                  await launch(url);
                                }
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Card(
                              child: SizedBox(
                                  height: 50,
                                  width: 400,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      GestureDetector(
                                          child: Text(
                                            textlist[index],
                                            style: GoogleFonts.indieFlower(
                                                textStyle: TextStyle(
                                                    fontSize: 25,
                                                    color: Colors.blueGrey)),
                                          ),
                                          onTap: () async {
                                            String url = urllist[index];
                                            if (await canLaunch(url)) {
                                              await launch(url);
                                            }
                                          }),
                                    ],
                                  )),
                            ),
                          ],
                        ))
                  ],
                );
              },
              itemWidth: 350.0,
              itemHeight: 240.0,
            ),
            SizedBox(
              height: 50,
            ),
            firebaaseButton(
              context,
              "Massage Us on Whatsapp",
              () async {
                const wapp =
                    "https://wa.me/919123363689?text=E-Royal Mart User:";
                if (await canLaunch(wapp)) {
                  await launch(wapp);
                }
              },
            ),
            firebaaseButton(
              context,
              "Contact Us on Facebook",
              () async {
                const wapp = "http://fb.me/msg/tayansinha7";
                if (await canLaunch(wapp)) {
                  await launch(wapp);
                }
              },
            ),
            firebaaseButton(
              context,
              "Follow us on Instagram",
              () async {
                const gmail = "https://www.instagram.com/tayansinha/";
                if (await canLaunch(gmail)) {
                  await launch(gmail);
                }
              },
            ),
            firebaaseButton(
              context,
              "Feedback",
              () async {
                const gmail = "mailto:tayansinha@gmail.com";
                if (await canLaunch(gmail)) {
                  await launch(gmail);
                }
              },
            )
          ],
        ));
  }
}

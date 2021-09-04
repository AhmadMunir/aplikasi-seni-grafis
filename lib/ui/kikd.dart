import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seni/ui/home.dart';
import 'package:seni/ui/ready.dart';

class Kikd extends StatefulWidget {
  @override
  KikdState createState() => KikdState();
}

class KikdState extends State<Kikd> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              "assets/background/back.jpg",
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Padding(
                padding: EdgeInsets.only(top: 20, left: 20),
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 100, right: 40, left: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Text(
                    "Ayo ketahui dua hal ini terlebih dahulu \n sebelum belajar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "Geometri",
                        color: Colors.black,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              top: 8,
                              bottom: 8,
                              left: 2,
                              right: 2,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey[850],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              height: 90,
                              padding: EdgeInsets.only(
                                top: 20,
                                bottom: 20,
                                left: 2,
                                right: 2,
                              ),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.grey[400],
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Text(
                                "KI & KD",
                                style: TextStyle(
                                    fontFamily: "Geometri",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                              ),
                            ),
                          )
                        ],
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              top: 8,
                              bottom: 8,
                              left: 2,
                              right: 2,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey[850],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              height: 90,
                              padding: EdgeInsets.only(
                                top: 20,
                                bottom: 20,
                                left: 2,
                                right: 2,
                              ),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.grey[400],
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Text(
                                "Tujuan \nPembelajaran",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "Geometri",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        top: 10, bottom: 10, left: 20, right: 10),
                    decoration: BoxDecoration(
                        color: Colors.red[200],
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "Selanjutnya",
                      style: TextStyle(fontFamily: "Geometri", fontSize: 20),
                    ),
                  )
                  // Container(
                  //   width: MediaQuery.of(context).size.width,
                  //   alignment: Alignment.center,
                  //   child: InkWell(
                  //     onTap: () {
                  //       Navigator.of(context).push(
                  //         MaterialPageRoute(
                  //           builder: (context) => Home(),
                  //         ),
                  //       );
                  //     },
                  //     child: Container(
                  //       padding: EdgeInsets.only(top: 10, bottom: 10),
                  //       width: MediaQuery.of(context).size.width * 0.8,
                  //       alignment: Alignment.center,
                  //       decoration: BoxDecoration(
                  //         color: Colors.red[100],
                  //         borderRadius: BorderRadius.circular(15),
                  //         border: Border.all(color: Colors.grey[800], width: 3),
                  //         boxShadow: [
                  //           BoxShadow(
                  //             blurRadius: 10,
                  //             color: Colors.grey[600],
                  //             offset: Offset(5, 5),
                  //             spreadRadius: 1,
                  //           ),
                  //         ],
                  //       ),
                  //       child: Card(
                  //         clipBehavior: Clip.antiAlias,
                  //         color: Colors.red[100],
                  //         child: Text(
                  //           "AYO MULAI BELAJAR",
                  //           style: TextStyle(
                  //               fontFamily: "Geometri",
                  //               fontWeight: FontWeight.bold,
                  //               fontSize: 20),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

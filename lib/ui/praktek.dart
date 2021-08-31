import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:seni/models/bahan_model.dart';

import 'package:seni/ui/detail_praktek.dart';
import 'package:seni/ui/detail_praktek_saring.dart';

class Praktek extends StatefulWidget {
  @override
  PraktekState createState() => PraktekState();
}

class PraktekState extends State<Praktek> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Praktik Berkarya Seni Grafis"),
        // backgroundColor: Colors.cyan[400],
      ),
      body: Stack(
        children: [
          Image.asset(
            "assets/background/back.jpg",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          ListView(
            padding: EdgeInsets.all(10),
            children: [
              Container(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DetailPraktek(
                            "Praktik Teknik Cetak Tinggi",
                            CetakTinggiModel().bahan,
                            CetakTinggiModel().alat,
                            CetakTinggiModel().step),
                      ),
                    );
                  },
                  child: Card(
                    color: Colors.greenAccent[100],
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      children: [
                        ListTile(
                          leading: Image.asset("assets/icon/ptinggi.png"),
                          title: Text(
                            "Praktik Berkarya",
                            style: TextStyle(color: Colors.black),
                          ),
                          subtitle: Text(
                            "Teknik Cetak Tinggi",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                        ),
                        // Padding(
                        //   padding: EdgeInsets.all(5.0),
                        //   child: Image.asset('assets/senigrafis-1.jpg'),
                        // ),
                      ],
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: Colors.grey, blurRadius: 5.0),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => PraktekCetakSaring(
                            "Praktik Teknik Cetak Saring",
                            CetakSaringModel().bahan,
                            CetakSaringModel().alat,
                            CetakSaringModel().step),
                      ),
                    );
                  },
                  child: Card(
                    color: Colors.deepOrange[300],
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      children: [
                        ListTile(
                          leading: Image.asset("assets/icon/psaring.png"),
                          title: Text(
                            "Praktik Berkarya",
                            style: TextStyle(color: Colors.black),
                          ),
                          subtitle: Text(
                            "Teknik Cetak Saring",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                        ),
                        // Padding(
                        //   padding: EdgeInsets.all(5.0),
                        //   child: Image.asset('assets/senigrafis-1.jpg'),
                        // ),
                      ],
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: Colors.grey, blurRadius: 5.0),
                  ],
                ),
              ),
              // SizedBox(
              //   height: 15,
              // ),
              // Container(
              //   child: Card(
              //     color: Colors.orange[100],
              //     clipBehavior: Clip.antiAlias,
              //     child: Column(
              //       children: [
              //         ListTile(
              //           leading: Icon(
              //             Icons.file_download,
              //             size: 45,
              //             color: Colors.black.withOpacity(0.6),
              //           ),
              //           title: Text(
              //             "Praktik Berkarya ",
              //             style: TextStyle(color: Colors.black),
              //           ),
              //           subtitle: Text(
              //             "Teknik Cetak Saring",
              //             style: TextStyle(
              //               color: Colors.black.withOpacity(0.6),
              //             ),
              //           ),
              //         ),
              //         // Padding(
              //         //   padding: EdgeInsets.all(5.0),
              //         //   child: Image.asset('assets/senigrafis-1.jpg'),
              //         // ),
              //       ],
              //     ),
              //   ),
              //   decoration: BoxDecoration(
              //     boxShadow: [
              //       BoxShadow(color: Colors.grey, blurRadius: 5.0),
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: 15,
              // ),
              // Container(
              //   child: Card(
              //     color: Colors.teal[100],
              //     clipBehavior: Clip.antiAlias,
              //     child: Column(
              //       children: [
              //         ListTile(
              //           leading: Icon(
              //             Icons.blur_circular,
              //             size: 45,
              //             color: Colors.black.withOpacity(0.6),
              //           ),
              //           title: Text(
              //             "Teknik",
              //             style: TextStyle(color: Colors.black),
              //           ),
              //           subtitle: Text(
              //             "Cetak Saring",
              //             style: TextStyle(
              //               color: Colors.black.withOpacity(0.6),
              //             ),
              //           ),
              //         ),
              //         // Padding(
              //         //   padding: EdgeInsets.all(5.0),
              //         //   child: Image.asset('assets/senigrafis-1.jpg'),
              //         // ),
              //       ],
              //     ),
              //   ),
              //   decoration: BoxDecoration(
              //     boxShadow: [
              //       BoxShadow(color: Colors.grey, blurRadius: 5.0),
              //     ],
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}

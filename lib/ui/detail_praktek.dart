import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seni/models/bahan_model.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DetailPraktek extends StatefulWidget {
  DetailPraktek(this.judul, this.bahan, this.alat, this.step);

  final String judul;
  final List<BahanModels> bahan;
  final List<BahanModels> step;
  final List<BahanModels> alat;

  @override
  DetailPraktekState createState() => DetailPraktekState();
}

class DetailPraktekState extends State<DetailPraktek> {
  bool prosesExpanded = false;
  bool peralatanExpanded = false;
  bool bahanExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.judul),
      ),
      body: Stack(
        children: [
          Image.asset(
            "assets/background/back.jpg",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.grey, blurRadius: 5.0),
                      ],
                    ),
                    child: Card(
                      color: Colors.greenAccent[100],
                      clipBehavior: Clip.antiAlias,
                      child: ExpansionTile(
                        backgroundColor: Colors.greenAccent[100],
                        title: Text(
                          "Bahan yang dibutuhkan",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        children: [
                          // Text(bahan.length.toString())
                          ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: widget.bahan.length,
                            itemBuilder: (context, index) {
                              // return Text("sda");
                              return Column(
                                children: [
                                  ListTile(
                                    leading: Icon(
                                      Icons.adjust,
                                      color: Colors.black,
                                    ),
                                    title: Text(
                                      widget.bahan[index].bahan,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Center(
                                    child: widget.bahan[index].imgPath == ""
                                        ? Container(
                                            width: 0,
                                            height: 0,
                                          )
                                        : Image.asset(
                                            widget.bahan[index].imgPath,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.8,
                                          ),
                                  ),
                                ],
                              );
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.grey, blurRadius: 5.0),
                      ],
                    ),
                    child: Card(
                      color: Colors.greenAccent[100],
                      clipBehavior: Clip.antiAlias,
                      child: ExpansionTile(
                        backgroundColor: Colors.greenAccent[100],
                        title: Text(
                          "Peralatan yang diperlukan: ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        children: [
                          // Text(bahan.length.toString())
                          ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: widget.alat.length,
                            itemBuilder: (context, index) {
                              // return Text("sda");
                              return Column(
                                children: [
                                  ListTile(
                                    leading: Icon(
                                      Icons.adjust,
                                      color: Colors.black,
                                    ),
                                    title: Text(
                                      widget.alat[index].bahan,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Center(
                                    child: Image.asset(
                                      widget.alat[index].imgPath,
                                      width: MediaQuery.of(context).size.width *
                                          0.8,
                                    ),
                                  ),
                                ],
                              );
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.grey, blurRadius: 5.0),
                      ],
                    ),
                    child: Card(
                      color: Colors.greenAccent[100],
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: [
                          ExpansionTile(
                            onExpansionChanged: (isExpanded) {
                              print(
                                  "Proses Expanded : " + isExpanded.toString());
                              setState(() {
                                prosesExpanded = isExpanded;
                              });
                            },
                            backgroundColor: Colors.greenAccent[100],
                            title: Text(
                              "Proses Pembuatan : ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                            children: [
                              // Text(bahan.length.toString())
                              widget.step.isEmpty
                                  ? Container(
                                      width: 0,
                                      height: 0,
                                    )
                                  : ListView.builder(
                                      shrinkWrap: true,
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: widget.alat.length,
                                      itemBuilder: (context, index) {
                                        // return Text("sda");
                                        return Column(
                                          children: [
                                            ListTile(
                                              leading: Icon(
                                                Icons.adjust,
                                                color: Colors.black,
                                              ),
                                              title: Text(
                                                widget.alat[index].bahan,
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Center(
                                              child: Image.asset(
                                                widget.alat[index].imgPath,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.8,
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    )
                            ],
                          ),
                          widget.step.isEmpty
                              ? YoutubePlayer(
                                  controller: YoutubePlayerController(
                                    initialVideoId: "Q6gx9ggrWBk",
                                    flags: YoutubePlayerFlags(
                                        autoPlay: false, mute: false),
                                  ),
                                  bufferIndicator: Text("Loading...."),
                                )
                              : Container(
                                  width: 0,
                                  height: 0,
                                )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

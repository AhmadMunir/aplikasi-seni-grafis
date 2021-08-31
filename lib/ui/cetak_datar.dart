import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seni/models/pengertian_model.dart';

class CetakDatar extends StatefulWidget {
  static String id = 'CetakDatar';
  @override
  State<StatefulWidget> createState() => new _CetakDatarState();
}

class _CetakDatarState extends State<CetakDatar> {
  List<PengertianModels> list = [
    PengertianModels("",
        "Cetak datar merupakan teknik cetak yang menggunakan klise datar dengan prinsip saling menolak dan menerima antara tinta dan air. Teknik ini memperbanyak hasil cetakan dengan media permukaan yang datar."),
    PengertianModels(
      "",
      "Klise cetak yang digunakan dapat berupa batu cadas (limestone) yang biasa disebut lithography, lempengan logam (seng).",
    ),
    PengertianModels(
      "imgPath",
      "Teknik cetak ini matrix permukaannya tetap, hanya mendapat perlakukan khusus pada bagian tertentu untuk menciptakan gambar.",
    ),
    PengertianModels(
      "imgPath",
      "Jenis-jenis teknik ini meliputi : litografi, monotype, dan teknik digital salah satunya cetak offset.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(),
        child: SafeArea(
          child: Stack(
            children: [
              Image.asset(
                "assets/background/back.jpg",
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white38,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),

                      Padding(
                        padding: EdgeInsets.only(
                          right: 20,
                          left: 20,
                          top: 10,
                        ),
                        child: Center(
                          child: Text(
                            "Pengertian Seni Cetak Datar",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 20,
                          left: 20,
                          top: 10,
                        ),
                        child: Center(
                          child: Text(
                            "(Intaglio Print)",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Padding(
                        padding: EdgeInsets.only(
                          right: 20,
                          left: 20,
                        ),
                        child: Center(
                          child: Text(
                            "\t \t \t" + list[0].desc,
                            style: TextStyle(color: Colors.black, fontSize: 19),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                      // Padding(
                      //   padding: EdgeInsets.only(
                      //     right: 20,
                      //     left: 20,
                      //   ),
                      //   child: Center(
                      //     child: Image.asset(
                      //       list[1].imgPath,
                      //       height: 250,
                      //     ),
                      //   ),
                      // ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 20,
                          left: 20,
                        ),
                        child: Center(
                          child: Text(
                            "\t \t" + list[1].desc,
                            style: TextStyle(color: Colors.black, fontSize: 19),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 20,
                          left: 20,
                        ),
                        child: Center(
                          child: Text(
                            "\t \t" + list[2].desc,
                            style: TextStyle(color: Colors.black, fontSize: 19),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 20,
                          left: 20,
                        ),
                        child: Center(
                          child: Text(
                            "\t \t" + list[3].desc,
                            style: TextStyle(color: Colors.black, fontSize: 19),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 20,
                          left: 20,
                          top: 10,
                        ),
                        child: Center(
                          child: Text(
                            "Contoh Seni Cetak Datar:",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 20,
                          left: 20,
                        ),
                        child: Center(
                          child: Image.asset(
                            "assets/img/cetak_datar/datar.jpg",
                            height: 250,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 20,
                          left: 20,
                        ),
                        child: Center(
                          child: Text(
                            "Seni grafis dengan teknik datar / litografi",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 32.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: FlatButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            color: Color(0xFFFFA400),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 14.0),
                              child: Text(
                                "Kembali",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                      // Padding(
                      //   padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     children: [
                      //       _currentPage != 0
                      //           ? GestureDetector(
                      //               onTap: () {
                      //                 _pageController.previousPage(
                      //                     duration: Duration(milliseconds: 500),
                      //                     curve: Curves.ease);
                      //               },
                      //               child: Icon(
                      //                 Icons.keyboard_arrow_left,
                      //                 color: Color(0xFF094D74),
                      //                 size: 24,
                      //               ),
                      //             )
                      //           : Container(),
                      //       _currentPage != _totalPages - 1
                      //           ? GestureDetector(
                      //               onTap: () {
                      //                 // Navigator.pushNamed(context, routeName);
                      //               },
                      //               child: Text(
                      //                 'Lewati',
                      //                 style: TextStyle(
                      //                   color: Color(0xFF094D74),
                      //                   fontSize: 18,
                      //                   fontWeight: FontWeight.w500,
                      //                 ),
                      //               ),
                      //             )
                      //           : Container(),
                      //     ],
                      //   ),
                      // ),
                      // Expanded(
                      //   child: Container(
                      //     child: PageView(
                      //       physics: BouncingScrollPhysics(),
                      //       onPageChanged: (int page) {
                      //         setState(() {
                      //           _currentPage = page;
                      //         });
                      //       },
                      //       children: getPengertian()
                      //           .map((e) => renderPengertianScreen(e))
                      //           .toList(),
                      //     ),
                      //   ),
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: _buildPageIndicator(),
                      // ),
                      // SizedBox(
                      //   height: 25,
                      // ),
                      // Padding(
                      //   padding: EdgeInsets.only(bottom: 32.0),
                      //   child: SizedBox(
                      //     width: MediaQuery.of(context).size.width * 0.9,
                      //     child: FlatButton(
                      //       onPressed: () {
                      //         if (_currentPage != _totalPages - 1) {
                      //           _pageController.nextPage(
                      //             duration: Duration(milliseconds: 500),
                      //             curve: Curves.ease,
                      //           );
                      //         } else {
                      //           // Navigator.pushNamed(context, routeName)
                      //         }
                      //       },
                      //       color: Color(0xFFFFA400),
                      //       shape: RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(10.0),
                      //       ),
                      //       child: Padding(
                      //         padding: EdgeInsets.symmetric(vertical: 14.0),
                      //         child: Text(
                      //           _currentPage != _totalPages - 1 ? "Lanjut" : "Selesai",
                      //           style: TextStyle(
                      //             color: Colors.white,
                      //             fontSize: 18,
                      //             fontWeight: FontWeight.w500,
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column renderPengertianScreen(PengertianModels pengertianModels) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 30.0,
        ),
        Center(
          child: Image.asset(
            pengertianModels.imgPath,
            height: 250,
          ),
        ),
        SizedBox(
          height: 25.0,
        ),
        Center(
          child: Text(
            pengertianModels.desc,
            style: TextStyle(color: Color(0xFF7CB5E8), fontSize: 20),
            textAlign: TextAlign.justify,
          ),
        )
      ],
    );
  }
}

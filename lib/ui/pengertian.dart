import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seni/models/pengertian_model.dart';

class Pengertian extends StatefulWidget {
  static String id = 'Pengertian';
  @override
  State<StatefulWidget> createState() => new _PengertianState();
}

class _PengertianState extends State<Pengertian> {
  final PageController _pageController = PageController(initialPage: 0);
  final int _totalPages = 3;
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (var i = 0; i < _totalPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 3.0),
      height: 8.0,
      width: isActive ? 18.0 : 8.0,
      decoration: BoxDecoration(
        color: isActive ? Color(0xFF094D74) : Colors.grey[400],
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }

  List<PengertianModels> list = [
    PengertianModels(
      "assets/img/senigrafis-1.jpg",
      "Grafis berasal dari bahasa yunani yaitu kata “Graphen” yang berarti menulis atau menggambar. Istilah grafis dari bahasa Inggris adalah “graph“ atau “graphic” yang berarti dapat membuat tulisan, lukisan dengan cara ditoreh atau digores. Seni grafis termasuk karya seni rupa dwimatra (2 Dimensi) yang dibuat untuk mencurahkan ide/gagasan dan emosi seseorang dengan menggunakan teknik cetak, sehingga memungkinkan pelipat gandaan karyanya. Istilah seni grafis dikenal juga dengan seni mencetak.",
    ),
    PengertianModels(
      "assets/img/senigrafis-2.jpg",
      "Karya seni grafis umumnya dibuat di atas kertas, pada teknik monotype, prosesnya mampu menciptakan salinan karya yang sama dalam jumlah banyak, ini yang disebut dengan proses cetak. Seni grafis diciptakan diatas permukaan yang disebut dengan plat (medium cetak). Plat yang dapat dijadikan media berupa kayu, logam, lembaran kaca akrilik, lembaran linoleum, atau batu litografi. Seni grafis lain yang disebut dengan cetak saring menggunakan  lembaran kain berpori (screen-printing) yang direntangkan pada sebuah kerangka.",
    ),
    PengertianModels(
      "imgPath",
      "Seni grafis di Indonesia merupakan media alternative bagi seniman yang telah mengerjakan bidang lainnyaseperti melukis atau mematung. Secara kronologis seni grafis muncul sekitar tahun 1950-an, dengan tokoh Mohtar Apin, Haryadi Suadi dari Bandung, Suromo dan Abdul Salam dari Yogjakartakarya yang dibuat dengan teknik cukil kayu (woodcut) dan merupakan termasuk dalam poster perjuangan.",
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
                      Padding(
                        padding: EdgeInsets.only(
                          right: 20,
                          left: 20,
                          top: 20,
                        ),
                        child: Center(
                          child: Text(
                            "Pengertian\nSeni",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Geometri",
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 20,
                          left: 20,
                        ),
                        child: Center(
                          child: Image.asset(
                            list[0].imgPath,
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
                            list[0].desc,
                            style: TextStyle(color: Colors.black, fontSize: 19),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 20,
                          left: 20,
                        ),
                        child: Center(
                          child: Image.asset(
                            list[1].imgPath,
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
                            list[1].desc,
                            style: TextStyle(color: Colors.black, fontSize: 19),
                            textAlign: TextAlign.justify,
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
                            list[2].desc,
                            style: TextStyle(color: Colors.black, fontSize: 19),
                            textAlign: TextAlign.justify,
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

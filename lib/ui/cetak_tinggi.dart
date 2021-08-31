import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seni/models/pengertian_model.dart';

class CetakTinggi extends StatefulWidget {
  static String id = 'CetakTinggi';
  @override
  State<StatefulWidget> createState() => new _CetakTinggiState();
}

class _CetakTinggiState extends State<CetakTinggi> {
  List<PengertianModels> list = [
    PengertianModels("",
        "Mengunakan klise/ acuan/ alat cetak yang menghasilkan bagian menonjol yang jika ditempelkan pada kertas kemudian diangkat, maka gambar akan nampak pada kertas atau media yang digunakan"),
    PengertianModels(
      "",
      "Cetak tinggi memanfaatkan bentuk/permukaan yang paling tinggi dapat kita lihat adanya gambar atau tulisan yang timbul yang nantinya akan menghasilkan suatu gambar atau tulisan pada benda yang diberi warna.",
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
                    color: Colors.white54,
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
                            "Pengertian Seni Cetak Tinggi",
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
                            "(Teknik Relief / Teknik Cukil)",
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
                          top: 10,
                        ),
                        child: Center(
                          child: Text(
                            "Contoh Seni Cetak Tinggi:",
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
                            "assets/img/cetak_tinggi/kentang.jpg",
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
                            "Cetak tinggi dengan menggunakan media kentang dan pelepah pisang",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                            textAlign: TextAlign.center,
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
                          child: Image.asset(
                            "assets/img/cetak_tinggi/plat.jpg",
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
                            "Cetak tinggi dengan menggunakan media plat mdf",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                            textAlign: TextAlign.center,
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
                          child: Image.asset(
                            "assets/img/cetak_tinggi/stempel.jpg",
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
                            "Cetak tinggi dengan menggunakan stempel",
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

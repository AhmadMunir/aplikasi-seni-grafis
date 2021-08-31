import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seni/models/bahan_model.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PraktekCetakSaring extends StatefulWidget {
  PraktekCetakSaring(this.judul, this.bahan, this.alat, this.step);

  final String judul;
  final List<BahanModels> bahan;
  final List<BahanModels> step;
  final List<BahanModels> alat;

  @override
  PraktekCetakSaringState createState() => PraktekCetakSaringState();
}

class PraktekCetakSaringState extends State<PraktekCetakSaring> {
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
                            backgroundColor: Colors.greenAccent[100],
                            title: Text(
                              "Proses Pembuatan Klise (film negative) ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                            children: [
                              ListTile(
                                leading: Icon(
                                  Icons.adjust,
                                  color: Colors.black,
                                ),
                                title: Text(
                                  "Pembuatan klise memperhatikan bahan dan teknik yang digunakan. Bahan yang digunakan harus transparan, hal tersebut agar pada saat penyinaran (pengeksporan) bagian yang seharusnya tidak tembus oleh tinta akan terkena sinar secara utuh. Bahan yang biasanya digunakan adalah kertas kalkir, film, dan mika film.",
                                  style: TextStyle(fontWeight: FontWeight.w400),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(13),
                                child: Text(
                                  "Ada beberapa teknik yang dapat digunakan dalam menggambar untuk membuat klise (film negative), yaitu: ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.adjust,
                                  color: Colors.black,
                                ),
                                title: RichText(
                                  text: TextSpan(
                                    text: "Langsung pada screen : \n",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                    children: [
                                      TextSpan(
                                          text:
                                              "Pada teknik ini setelah screen (kain kasa) diberi tulisan atau gambar/corak. Untuk area yang diinginkan tidak tembus oleh tinta diberi emulsi yang dicampur dengan sensitizer kemudian dijemur/penyinaran, setelah kering siap untuk dipergunakan mencetak. ",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400)),
                                    ],
                                  ),
                                ),
                              ),
                              ListTile(
                                  leading: Icon(
                                    Icons.adjust,
                                    color: Colors.black,
                                  ),
                                  title: RichText(
                                    text: TextSpan(
                                      text: "Negatif Film : \n",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                      children: [
                                        TextSpan(
                                            text:
                                                "Proses ini menggunakan kertas kalkir (transparan) atau kertas biasa yang sudah digambar. Untuk jenis kertas biasa setelah digambar dilumuri dengan minyak goreng / minyak tanah terlebih dahulu, dan dikeringkan sehingga menjadi transparan. ",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400)),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
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
                          "Proses Afdruk Pengekposan : ",
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
                            itemCount: 1,
                            itemBuilder: (context, index) {
                              // return Text("sda");
                              return Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(15),
                                    child: Text(
                                      "\t\t\tAfdruk / pengeksposan / penyinaran adalah proses memindahkan gambar berupa selebaran kertas yang akan menjadi model / desain ke screen dengan bantuan bahan yang disebut emulsi sablon",
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(16),
                                    child: Text(
                                      "Berikut ini tahapan afdruk, antara lain:                             ",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  ListTile(
                                    leading: Icon(
                                      Icons.adjust,
                                      color: Colors.black,
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text: "Pelapisan (coating) : \n",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                        children: [
                                          TextSpan(
                                            text:
                                                "Meliputi proses pencampuran emulsi dengan sensitilizer (obat afdruk siap pakai) dan mengoleskannya ke screen dengan menggunakan alat yang disebut dengan coater (pelapis) bisa juga dipakai penggaris, tahap pengolesan ini dilakukan di dalam ruang yang gelap.",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Center(
                                    child: Image.asset(
                                      "assets/img/cetak_saring/pelapisan.jpg",
                                      width: MediaQuery.of(context).size.width *
                                          0.8,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  ListTile(
                                    leading: Icon(
                                      Icons.adjust,
                                      color: Colors.black,
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text: "Pengeringan Awal : \n",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                        children: [
                                          TextSpan(
                                            text:
                                                "Screen yang sudah kering dari larutan emulsi, lalu bagian bawah dialasi dengan busa hitam, dan dibagian atas diletakkan klise negatif/kertas yang siap diekpose, Lakukan penyinaran sekitar 20 detik untuk cahaya terik dan 50 detik untuk cahaya matahari yang redup/sinar lampu neon ",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  ListTile(
                                    leading: Icon(
                                      Icons.adjust,
                                      color: Colors.black,
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text:
                                            "Penyinaran screen ke panas matahari atau lampu neon : \n",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                        children: [
                                          TextSpan(
                                            text:
                                                "Proses pengeringan ini bisa dilakukan dengan menggunakan bantuan hair dryer, kipas angin, atau didiamkan saja sampai kering. Sebagai catatan dalam proses pengeringan ini usahakan agar tidak terkena sinar matahari lansung atau lampu yang mengandung sinar ultra violet seperti neon, tujuannya untuk mencegah agar cahaya tidak mengenai emulsi.",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Center(
                                    child: Image.asset(
                                      "assets/img/cetak_saring/penyinaran.jpg",
                                      width: MediaQuery.of(context).size.width *
                                          0.8,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  ListTile(
                                    leading: Icon(
                                      Icons.adjust,
                                      color: Colors.black,
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text: "Pembuatan klise  : \n",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                        children: [
                                          TextSpan(
                                            text:
                                                "Semprot dengan air untuk menghilangkan bagian yang seharusnya berlubang pada bagian screen yang kita desain, gunakan semprotan yang sesuai dan dapat menyemprot dengan kuat. ",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Center(
                                    child: Image.asset(
                                      "assets/img/cetak_saring/pembuatan_klise.jpg",
                                      width: MediaQuery.of(context).size.width *
                                          0.8,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  ListTile(
                                    leading: Icon(
                                      Icons.adjust,
                                      color: Colors.black,
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text: "Pengeringan  : \n",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                        children: [
                                          TextSpan(
                                            text:
                                                "Proses ini bisa dengan hair dryer atau dengan panas matahari. ",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Center(
                                    child: Image.asset(
                                      "assets/img/cetak_saring/pengeringan.jpg",
                                      width: MediaQuery.of(context).size.width *
                                          0.8,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  ListTile(
                                    leading: Icon(
                                      Icons.adjust,
                                      color: Colors.black,
                                    ),
                                    title: RichText(
                                      text: TextSpan(
                                        text: "Proses Mencetak   : \n",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                        children: [
                                          TextSpan(
                                            text:
                                                "Screen kering yang sudah melalui proses pengekposan gambar siap untuk dicetak. Letakan kertas atau media yang akan dicetak. Tuang warna yang diinginkan dan ratakan dengan rakel. ",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Center(
                                    child: Image.asset(
                                      "assets/img/cetak_saring/cetak1.jpg",
                                      width: MediaQuery.of(context).size.width *
                                          0.8,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Center(
                                    child: Image.asset(
                                      "assets/img/cetak_saring/cetak2.jpg",
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

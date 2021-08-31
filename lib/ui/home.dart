import 'package:asset_cache/asset_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:seni/ui/jenis.dart';
import 'package:seni/ui/latihan_soal.dart';
import 'package:seni/ui/pengertian.dart';
import 'package:seni/ui/praktek.dart';
import 'package:seni/ui/teknik.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  ImageProvider imageProvider;
  Image image1;

  @override
  void initState() {
    super.initState();
    image1 = Image.asset("assets/background/back.jpg");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(image1.image, context);
  }

  @override
  Widget build(BuildContext context) {
    // precacheImage(AssetImage("assets/background/back.png"), context);
    return WillPopScope(
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Image.asset(
                "assets/background/back.jpg",
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              ListView(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.width * 0.15),
                children: [
                  Text(
                    "SENI GRAFIS",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Pengertian()));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.amber[100],
                        clipBehavior: Clip.antiAlias,
                        child: SizedBox(
                          width: 7,
                          child: ListTile(
                            leading: Image.asset("assets/icon/1.png"),
                            title: Text(
                              "Pengertian",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.amber[100],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 3,
                          color: Colors.blueGrey[700],
                          style: BorderStyle.solid),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Jenis()));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.amber[100],
                        clipBehavior: Clip.antiAlias,
                        child: SizedBox(
                          width: 7,
                          child: ListTile(
                            leading: Image.asset("assets/icon/2.png"),
                            title: Text(
                              "Jenis",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.amber[100],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 3,
                          color: Colors.blueGrey[700],
                          style: BorderStyle.solid),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Teknik()));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.amber[100],
                        clipBehavior: Clip.antiAlias,
                        child: SizedBox(
                          width: 7,
                          child: ListTile(
                            leading: Image.asset("assets/icon/3.png"),
                            title: Text(
                              "Teknik",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.amber[100],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 3,
                          color: Colors.blueGrey[700],
                          style: BorderStyle.solid),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Praktek()));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.amber[100],
                        clipBehavior: Clip.antiAlias,
                        child: SizedBox(
                          width: 7,
                          child: ListTile(
                            leading: Image.asset("assets/icon/4.png"),
                            title: Text(
                              "Praktik Berkarya",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.amber[100],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 3,
                          color: Colors.blueGrey[700],
                          style: BorderStyle.solid),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LatihanSoal()));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.amber[100],
                        clipBehavior: Clip.antiAlias,
                        child: SizedBox(
                          width: 7,
                          child: ListTile(
                            leading: Image.asset("assets/icon/5.png"),
                            title: Text(
                              "Latihan Soal",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.amber[100],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 3,
                          color: Colors.blueGrey[700],
                          style: BorderStyle.solid),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      onWillPop: () {
        return showDialog(
          context: context,
          builder: (BuildContext context) {
            return WillPopScope(
                child: AlertDialog(
                  title: Text("Kamu yakin akan keluar?"),
                  content: Text("Kamu akan keluar dari aplikasi."),
                  actions: [
                    FlatButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text("Batal"),
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).pop();
                      },
                      child: Text("Ya"),
                    ),
                  ],
                ),
                onWillPop: () async => false);
          },
        );
      },
    );
  }
}

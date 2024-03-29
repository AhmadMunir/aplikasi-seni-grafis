import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:seni/ui/pengertian.dart';

class Jenis extends StatefulWidget {
  @override
  JenisState createState() => JenisState();
}

class JenisState extends State<Jenis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jenis Seni Grafis"),
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
                child: Card(
                  color: Colors.greenAccent[100],
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Image.asset("assets/icon/tinggi.png"),
                        title: Text(
                          "Cetak Tinggi",
                          style: TextStyle(color: Colors.black),
                        ),
                        subtitle: Text(
                          "",
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
                child: Card(
                  color: Colors.deepOrange[300],
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Image.asset("assets/icon/rendah.png"),
                        title: Text(
                          "Cetak Dalam",
                          style: TextStyle(color: Colors.black),
                        ),
                        subtitle: Text(
                          "",
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
                child: Card(
                  color: Colors.orange[100],
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Image.asset("assets/icon/datar.png"),
                        title: Text(
                          "Cetak Datar",
                          style: TextStyle(color: Colors.black),
                        ),
                        subtitle: Text(
                          "",
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
                child: Card(
                  color: Colors.teal[100],
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Image.asset("assets/icon/saring.png"),
                        title: Text(
                          "Cetak Saring",
                          style: TextStyle(color: Colors.black),
                        ),
                        subtitle: Text(
                          "",
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
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: Colors.grey, blurRadius: 5.0),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

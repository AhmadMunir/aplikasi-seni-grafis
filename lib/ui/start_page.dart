import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seni/ui/home.dart';

class StartPage extends StatefulWidget {
  @override
  StartPageState createState() => StartPageState();
}

class StartPageState extends State<StartPage> {
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
            Container(
              margin: EdgeInsets.only(top: 100, right: 40, left: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Halo,",
                    style: TextStyle(
                        fontFamily: "Geometri",
                        color: Colors.black,
                        fontSize: 40),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Selamat datang",
                    style: TextStyle(
                        fontFamily: "Geometri",
                        color: Colors.black,
                        fontSize: 30),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "di pelajaran",
                    style: TextStyle(
                        fontFamily: "Geometri",
                        color: Colors.black,
                        fontSize: 30),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "SENI GRAFIS",
                    style: TextStyle(
                        fontFamily: "Geometri",
                        color: Colors.black,
                        fontSize: 40),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  // Container(child: ,)
                  Container(
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        width: MediaQuery.of(context).size.width * 0.8,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey[800], width: 3),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10,
                              color: Colors.grey[600],
                              offset: Offset(5, 5),
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          color: Colors.grey[400],
                          child: Text(
                            "AYO MULAI BELAJAR",
                            style: TextStyle(
                                fontFamily: "Geometri",
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seni/ui/home.dart';
import 'package:seni/ui/kikd.dart';

class Ready extends StatefulWidget {
  @override
  ReadyState createState() => ReadyState();
}

class ReadyState extends State<Ready> {
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
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  Text(
                    "Sudah siap untuk belajar?",
                    style: TextStyle(
                        fontFamily: "Geometri",
                        color: Colors.black,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  // Container(child: ,)
                  Container(
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Kikd(),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        width: MediaQuery.of(context).size.width * 0.8,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.red[100],
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
                          color: Colors.red[100],
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

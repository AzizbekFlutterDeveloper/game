import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';

class TshQaychi extends StatefulWidget {
  const TshQaychi({Key? key}) : super(key: key);

  @override
  State<TshQaychi> createState() => _TshQaychiState();
}

class _TshQaychiState extends State<TshQaychi> {
  int s1 = 5, s2 = 0, s3 = Random().nextInt(3);
  String qiymat = "";
  String gif = "Tosh Qaychi Qog'oz";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width,
            color: Colors.amber,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height * 0.20,
                  width: MediaQuery.of(context).size.height * 0.35,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    border: Border.all(color: Colors.white, width: 4),
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          korsat2(),
                          style: const TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: IconButton(
                            onPressed: () {
                              s1 = 5;
                              s2 = 0;
                              qiymat = "";
                              setState(() {
                                
                              });
                            },
                            icon: Icon(Icons.restart_alt_rounded, size: 50)),
                      )
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.height * 0.25,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(color: Colors.white, width: 4),
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    image:
                        DecorationImage(image: AssetImage("${chiqarRandom()}")),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width,
            color: Colors.green,
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.height * 0.25,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(color: Colors.white, width: 4),
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    image: DecorationImage(image: AssetImage(chiqar())),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 50),
                        height: MediaQuery.of(context).size.height * 0.13,
                        width: MediaQuery.of(context).size.height * 0.13,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.white, width: 4),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                          image: const DecorationImage(
                              image: AssetImage("assets/image/qaychi.png")),
                        ),
                      ),
                      onTap: (s2 == 1)
                          ? null
                          : () {
                              s1 = 0;
                              s2 = 1;

                              s3 = Random().nextInt(3);

                              winMe();
                              setState(() {});
                            },
                    ),
                    InkWell(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.13,
                        width: MediaQuery.of(context).size.height * 0.13,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.white, width: 4),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                          image: const DecorationImage(
                              image: AssetImage("assets/image/qogoz.png")),
                        ),
                      ),
                      onTap: (s2 == 1)
                          ? null
                          : () {
                              s1 = 1;
                              s2 = 1;
                              s3 = Random().nextInt(3);

                              winMe();
                              setState(() {});
                            },
                    ),
                    InkWell(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.13,
                        width: MediaQuery.of(context).size.height * 0.13,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.white, width: 4),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                          image: const DecorationImage(
                              image: AssetImage("assets/image/tosh.png")),
                        ),
                      ),
                      onTap: (s2 == 1)
                          ? null
                          : () {
                              s1 = 2;
                              s2 = 1;

                              s3 = Random().nextInt(3);

                              winMe();
                              setState(() {});
                            },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
        Positioned(
          child: Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.height * 0.35,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                    color: s2 == 1 ? Colors.transparent : Colors.white,
                    width: 4),
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                image: DecorationImage(image: AssetImage(korsat())),
              ),
            ),
          ),
        ),
      ]),
    );
  }

  korsat() {
    if (s2 == 1) {
      return "";
    } else if(s2 == 0) {
      return "assets/image/toshQaychi.gif";
    }
  }

  chiqar() {
    if (s1 == 0) {
      return "assets/image/qaychi.png";
    } else if (s1 == 1) {
      return "assets/image/qogoz.png";
    } else if (s1 == 2) {
      return "assets/image/tosh.png";
    } else {
      return "assets/image/qizil.jpg";
    }
  }

  chiqarRandom() {
    if (s2 == 1) {
      if (s3 == 0) {
        return "assets/image/qaychi.png";
      } else if (s3 == 1) {
        return "assets/image/qogoz.png";
      } else if (s3 == 2) {
        return "assets/image/tosh.png";
      } else {
        return "assets/image/qizil.jpg";
      }
    }
  }

  winMe() {
    if (s1 == 0 && s3 == 0) {
      qiymat = "Durrang";
      return korsat2();
    } else if (s1 == 1 && s3 == 1) {
      qiymat = "Durrang";
      return korsat2();
    } else if (s1 == 2 && s3 == 2) {
      qiymat = "Durrang";
      return korsat2();
    } else if (s1 == 0 && s3 == 1) {
      qiymat = "Yediz Brat";
      return korsat2();
    } else if (s1 == 0 && s3 == 2) {
      qiymat = "Iya Yutdiz";
      return korsat2();
    } else if (s1 == 1 && s3 == 2) {
      qiymat = "Yediz Brat";
      return korsat2();
    } else if (s1 == 1 && s3 == 0) {
      qiymat = "Iya Yutdiz";
      return korsat2();
    } else if (s1 == 2 && s3 == 0) {
      qiymat = "Yediz Brat";
      return korsat2();
    } else if (s1 == 2 && s3 == 1) {
      qiymat = "Iya Yutdiz";
      return korsat2();
    }
  }

  korsat2() {
    if (qiymat == "Yediz Brat") {
      return "Yediz Brat";
    } else if (qiymat == "Iya Yutdiz") {
      return "Iya Yutdiz";
    } else if (qiymat == "Durrang") {
      return "Durrang";
    } else {
      return "Tosh Qaychi Qog'oz";
    }
  }
}

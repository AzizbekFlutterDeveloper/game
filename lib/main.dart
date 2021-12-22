
import 'package:darsbir/seecne/dars11/a_page.dart';
import 'package:darsbir/seecne/dars11/homePage.dart';
import 'package:darsbir/seecne/dars12/dars_onikki.dart';
import 'package:darsbir/seecne/dars12/infi_page.dart';
import 'package:darsbir/seecne/oyinlar/onbesh_game.dart';
import 'package:darsbir/seecne/oyinlar/parol.dart';
import 'package:darsbir/seecne/oyinlar/tic_tac_toe.dart';
import 'package:darsbir/seecne/oyinlar/toshQaychiQogoz.dart';
import 'package:darsbir/seecne/vazifa11/tel_haqida.dart';
import 'package:darsbir/seecne/vazifa11/telefon.dart';
import 'package:flutter/material.dart';

import 'seecne/dars11/b_page.dart';
import 'seecne/dars11/c_page.dart';
import 'seecne/dars11/error_page.dart';

void main() {
  runApp(const MeningApp());
}

class MeningApp extends StatelessWidget {
  const MeningApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      title: "Birinchi App",
      routes: {
        '/': (context) => DarsOnIkki(),
        '/Haqida': (context) =>  Haqida(),
        
       
      },
      initialRoute: '/',
      onUnknownRoute: (settings) => MaterialPageRoute(builder: (context)=> ErrorPage()),
    );
  }
}

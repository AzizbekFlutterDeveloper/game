import 'package:darsbir/seecne/dars11/a_page.dart';
import 'package:flutter/material.dart';

import 'b_page.dart';
import 'c_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const APage()));
              },
              child: const Text("A page"),
              style: ElevatedButton.styleFrom(primary: Colors.green),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => BPage(
                          title: "B page",
                        )));
              },
              child: const Text("B page"),
              style: ElevatedButton.styleFrom(primary: Colors.green),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(
                        builder: (context) => CPage(
                              title: "C page",
                            )))
                    .then((value) => print("Qiymat: $value"));
              },
              child: const Text("C page"),
              style: ElevatedButton.styleFrom(primary: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}

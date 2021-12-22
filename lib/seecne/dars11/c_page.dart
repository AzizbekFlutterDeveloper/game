import 'package:flutter/material.dart';

import 'b_page.dart';

class CPage extends StatefulWidget {
  String? title;
  CPage({Key? key, this.title}) : super(key: key);

  @override
  _CPageState createState() => _CPageState();
}

class _CPageState extends State<CPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title.toString()),
          ),
          body: Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BPage(title: "B PAGEEEEE")),
                    (route) => false);
              },
              child: const Text("B page"),
              style: ElevatedButton.styleFrom(primary: Colors.green),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.arrow_forward),
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => BPage(
                        title: "B pageeeeee",
                      )));
            },
          ),
        ),
        onWillPop: () {
          print(" ON WILL POPE ISHLADI");
          //Navigator.pop(context);
          return Future(() => true);
        });
  }
}

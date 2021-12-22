import 'dart:math';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class DarsSakkiz extends StatelessWidget {
  DarsSakkiz({Key? key}) : super(key: key);
  final List<Color> rang = [
    Colors.red,
    Colors.green,
    Colors.amber,
    Colors.cyan,
    Colors.orange
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(
            child: Container(
              margin: EdgeInsets.all(10),
              color: rang[Random().nextInt(rang.length)],
              height: 200,
              child: Center(
                child: Text(
                  index.toString(),
                  style: const TextStyle(fontSize: 33.0),
                ),
              ),
            ),
            onTap: () {
              // showMyDialog(context, index);
              // showToast(context, index);
              // showSnacBar(context, index);
              myAwesomeDialog(context,);
            },
          );
        },
        itemCount: 20,
      ),
    );
  }

  showSnacBar(context, index) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("$index ga bosildi"),
        duration: const Duration(milliseconds: 2000),
        dismissDirection: DismissDirection.horizontal,
        backgroundColor: Colors.transparent,
      ),
    );
  }

  showToast(context, index) {
    return Fluttertoast.showToast(
      msg: "$index ga bosildi !",
      timeInSecForIosWeb: 2,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 30,
    );
  }

  showMyDialog(context, index) {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            "$index title",
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          content: const Text(
            "Conten !",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Cancel",
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(primary: Colors.white),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Ok",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(primary: Colors.green),
            ),
          ],
        );
      },
    );
  }

  myAwesomeDialog(context,) {
    return AwesomeDialog(
      context: context,
      dialogType: DialogType.SUCCES,
      title: "Qabul Qilindi !",
      desc: "Qabul Qiliganini Tasdiqlashini kuting !",
      btnCancel: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text("Cancel"),
      ),
      btnOk: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        style: ElevatedButton.styleFrom(primary:Colors.green),
        child: const Text("Ok"),
      ),
    )..show();
  }
}

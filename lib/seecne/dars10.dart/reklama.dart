import 'dart:math';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class DarsSakkiz extends StatelessWidget {
  DarsSakkiz({Key? key}) : super(key: key);
  List<String> name = [
    "Azizbek",
    "Anvarxon",
    "Axrorjon",
    "Jasurbek",
    "Muzaffar",
    "Tohirjon",
    "Nargiza",
    "Muxtasar",
    "Sarvar",
    "Bahodir",
    "Azizbek",
    "Anvarxon",
    "Axrorjon",
    "Jasurbek",
    "Muzaffar",
    "Tohirjon",
    "Nargiza",
    "Muxtasar",
    "Sarvar",
    "Bahodir"
  ];
  List<String> reklama = [
    "Sport Buyumlari",
    "Telefonlar",
    "Uy Jihozlari",
    "Atirlar",
    "Gullar"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: telegramAppBar(),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return index % 5 == 0
              ? InkWell(
                  child: ListTile(
                    leading: const Icon(Icons.shopping_bag,
                        color: Colors.amber, size: 40.0),
                    title: Text(reklama[random(index)]),
                    subtitle: const Text("reklama"),
                  ),
                  onTap: () {
                    myAwesomeDialog(context, random(index + 1));
                  },
                )
              : Divider();
        },
        itemBuilder: (context, index) {
          return InkWell(
            child: Card(
              color: index.isEven? Colors.blue:Colors.red,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage('https://source.unsplash.com/random/$index'),
                ),
                title: Text(
                  name[index],
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                subtitle: const Text(
                  "14:18",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing:
                    const Icon(Icons.arrow_forward_ios, color: Colors.white),
              ),
            ),
            onTap: () {
              // showMyDialog(context, index);
              showToast(context, index);
              // showSnacBar(context, index);
              //myAwesomeDialog(context, index);
            },
          );
        },
        itemCount: name.length,
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
      msg: "${name[index]} ga bosildi !",
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

  myAwesomeDialog(context, index) {
    return AwesomeDialog(
      context: context,
      dialogType: DialogType.SUCCES,
      title: "Maxsulot Sertifikatlangan",
      desc: "Maxsulotni sotib olish uchun 'Ha' tugmasini bosing !",
      btnCancel: ElevatedButton(
        onPressed: () {
          showToast2(context, 1);
          Navigator.pop(context);
        },
        child: const Text("Yo'q"),
      ),
      btnOk: ElevatedButton(
        onPressed: () {
          showToast2(context, 2);
          Navigator.pop(context);
        },
        style: ElevatedButton.styleFrom(primary: Colors.green),
        child: const Text("Ha"),
      ),
    )..show();
  }

  random(index) {
    return index % 5 == 0 ? Random().nextInt(reklama.length) : 0;
  }

  showToast2(context, index) {
    return Fluttertoast.showToast(     
      msg: index == 1
          ? "Siz maxsulorni rad qildiz !"
          : "Siz maxsulotni muofaqiyatli sotib oldingiz",
      timeInSecForIosWeb: 2,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 30,
    );
  }

  telegramAppBar() => AppBar(
        backgroundColor: Colors.blue,
        elevation: 4,
        actions: [
          Padding(
              padding: EdgeInsets.all(5),
              child: IconButton(
                  onPressed: () {}, icon: Icon(Icons.lock_open_outlined))),
          const Padding(
            padding: EdgeInsets.all(5),
            child: Icon(
              Icons.search_outlined,
              size: 30.0,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(5),
            child: Icon(Icons.more_vert_rounded, size: 30.0),
          ),
        ],
        bottomOpacity: 34.5,
        iconTheme: const IconThemeData(color: Colors.white),
        // leading: const CircleAvatar(
        //   radius: 10,
        //   backgroundImage: NetworkImage('https://source.unsplash.com/random'),
        // ),
        titleTextStyle: const TextStyle(color: Colors.blue, fontSize: 24),
        toolbarHeight: 60.0,
        toolbarTextStyle: const TextStyle(color: Colors.blue, fontSize: 34),
        titleSpacing: 30.0,
        title: const Text(
          "Telegram",
          style: TextStyle(color: Colors.white),
        ),
      );
}

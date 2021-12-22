import 'package:flutter/material.dart';

class MeningDarsIkki extends StatefulWidget {
  MeningDarsIkki({Key? key}) : super(key: key);
  @override
  State<MeningDarsIkki> createState() => _MeningSahifamIkkiState();
}

class _MeningSahifamIkkiState extends State<MeningDarsIkki> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello"),
      ),
      floatingActionButton: meningFloatBatonim(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      body: meningContenirim(),
    );
  }

  meningContenirim() => Center(
        child: Container(
          color: Colors.amberAccent, // Contenitni rangini ozgartirish uchun ishlatiladi 
          height: 200.0, // Contenirni enini bildirish uchun ishlatiladi
          width: 200.0,  // Contenirni bo'yi bildirish uchun ishlatiladi
          alignment: Alignment.center, // Conteni ichidagini joyini o'zgartirish uchun ishlatiladi
          child: Text(  // Contenirni ichiga malumot kiritish uchun ishlatiladi
            "${_count}",
            style: const TextStyle(
              fontSize: 100.0,
              color: Colors.grey,
            ),
          ),
        ),
      );
  meningFloatBatonim() => FloatingActionButton(
        onPressed: () {
          setState(() {
            _count += 1;
          });
          debugPrint("Buttonm bosildi !");
        },
        backgroundColor: Colors.cyan,
        child: const Icon(Icons.edit),
        mini: false,
        tooltip: "ko'zni qis !",
      );
}

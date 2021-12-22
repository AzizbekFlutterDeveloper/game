import 'package:flutter/material.dart';

class OnBesh extends StatefulWidget {
  const OnBesh({Key? key}) : super(key: key);

  @override
  _OnBeshState createState() => _OnBeshState();
}

class _OnBeshState extends State<OnBesh> {
  List lst = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 0];
  List lst2 = List.generate(16, (index) => 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          margin: EdgeInsets.only(top: 100),
          height: MediaQuery.of(context).size.height * 0.52,
          width: MediaQuery.of(context).size.width,
          color: Colors.cyan,
          child: GridView.builder(
            itemCount: 16,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4),
            itemBuilder: (context, index) {
              return InkWell(
                child: Container(
                  margin: EdgeInsets.all(3.0),
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.height * 0.1,
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      "${lst[index] == 0 ? "" : lst[index]}",
                      style: const TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  lst2[index] == 1 ? lst2[index] = 0 : lst2[index] = 1;
                  //  almash();
                  otkiz(index);
                  setState(() {});
                },
              );
            },
          ),
        ),
        Text(
          "${lst}",
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
        Text(
          "${lst2}",
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
      ]),
    );
  }

  otkiz(son) {
    int teng = 0;
    if (lst2[son] == 1) {
      lst[son] = 0;
      for (var i = 0; i < lst.length; i++) {
        if (lst[i] == 0) {
          lst[i] = son;
          lst[son] = 0;
        }
      }
    } else if (lst2[son] == 0) {
      lst[son] = 0;
      for (var i = 0; i < lst.length; i++) {
        if (lst[i] == 0) {
          lst[i] = son;
          lst[son] = 0;
        }
      }
    }
  }

  // almash() {
  //   if (lst[16] == 0) {
  //     if (lst2[11] == 1) {
  //       lst[16] == 11;
  //       lst[11] == 0;
  //     } else if (lst[14] == 1) {
  //       lst[16] == 14;
  //       lst[14] == 0;
  //     }
  //   }
  // }
}

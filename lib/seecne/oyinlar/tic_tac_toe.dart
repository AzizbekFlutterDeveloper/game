import 'package:darsbir/seecne/oyinlar/algaritim.dart';
import 'package:flutter/material.dart';

class TicTacToe extends StatefulWidget {
  @override
  State<TicTacToe> createState() => _TicTacToeState();
}

class _TicTacToeState extends State<TicTacToe> {
  List<Algaritim> lst1 = List.generate(9, (index) => Algaritim(son: 0));
  List lst3 = []; // ? X , 0 ni korsatish uchun
  List lst4 = [0, 0, 0, 0, 0, 0, 0, 0, 0]; // ? X , 0 kordinatasini aniqlashga
  bool xMi = false; // ? X , 0 ni almashtirishga
  int a = 0; // ? X , 0 ni korinadigan da almashtirishga
  List<int> indexList = [0, 1, 2, 3, 4, 5, 6, 7, 8]; // ? indexni aniqlashga
  int indexControl = 0; // ? indexni aniqlashga
  bool winMi = true;
  String qiymat = "";
  int p1 = 0, p2 = 0, p3 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tic Tac Toe"),
      ),
      body: Column(
        children: [
          Container(      
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "1 - o'yinchi: ${p1} |",
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    "Durrang: ${p2} |",
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "2 - o'yinchi: ${p3}",
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 30),
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  xMi == true ? "0" : "X",
                  style: const TextStyle(
                    fontSize: 35,
                    color: Colors.green,
                  ),
                ),
                const Text(
                  " ning navbati",
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
              ],
            ),
          ),
          Container(
            
            height: MediaQuery.of(context).size.height * 0.5,
            decoration:const  BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                image: AssetImage("assets/image/tictac.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: GridView.builder(
              itemCount: 9,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
              itemBuilder: (context, index) {
                return InkWell(
                  child: Container(
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      //border: Border.all(color: Colors.black, width: 0),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                        image: AssetImage(korsat(index)),
                      ),
                    ),
                  ),
                  onTap: (lst1[index].son == 1 ||
                          lst1[index].son == 2 ||
                          winMi == false)
                      ? null
                      : () {
                          a.isEven ? lst1[index].son = 1 : lst1[index].son = 2;
                          a += 1;
                          indexControl = indexList[index];

                          if (xMi) {
                            lst4[indexControl] = 1;
                            xMi = false;
                          } else {
                            lst4[indexControl] = 2;
                            xMi = true;
                          }
                          chempion();

                          setState(() {});
                        },
                );
              },
            ),
          ),
          InkWell(
            child: Container(
              margin: EdgeInsets.only(top:40),
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child:const  Center(
                child:  Text("reset",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            onLongPress: () {
              p1 = 0;
              p2 = 0;
              p3 = 0;
              setState(() {
                
              });
            },
            onTap: () {
              lst4.clear();
              lst4.addAll([0, 0, 0, 0, 0, 0, 0, 0, 0]);
              for (int i = 0; i < lst1.length; i++) {
                lst1[i].son = 0;
              }
              winMi = true;
              qiymat = "";
              setState(() {});
            },
          ),
        ],
      ),
    );
  }

  korsat(index) {
    if (lst1[index].son == 1) {
      return "assets/image/x1.png";
    } else if (lst1[index].son == 2) {
      return "assets/image/o1.png";
    } else {
      return "";
    }
  }

  chempion() {
    List niche = [];
    if (lst4[0] == 1 && lst4[1] == 1 && lst4[2] == 1) {
      winMi = false;
      p3 += 1;
      qiymat = "0";
      return dialogKorsat(context, 1);
    } else if (lst4[3] == 1 && lst4[4] == 1 && lst4[5] == 1) {
      winMi = false;
      p3 += 1;
      qiymat = "0";
      return dialogKorsat(context, 1);
    } else if (lst4[6] == 1 && lst4[7] == 1 && lst4[8] == 1) {
      winMi = false;
      p3 += 1;
      qiymat = "0";
      return dialogKorsat(context, 1);
    } else if (lst4[0] == 1 && lst4[3] == 1 && lst4[6] == 1) {
      winMi = false;
      p3 += 1;
      qiymat = "0";
      return dialogKorsat(context, 1);
    } else if (lst4[1] == 1 && lst4[4] == 1 && lst4[7] == 1) {
      winMi = false;
      p3 += 1;
      qiymat = "0";
      return dialogKorsat(context, 1);
    } else if (lst4[2] == 1 && lst4[5] == 1 && lst4[8] == 1) {
      winMi = false;
      p3 += 1;
      qiymat = "0";
      return dialogKorsat(context, 1);
    } else if (lst4[0] == 1 && lst4[4] == 1 && lst4[8] == 1) {
      winMi = false;
      p3 += 1;
      qiymat = "0";
      return dialogKorsat(context, 1);
    } else if (lst4[2] == 1 && lst4[4] == 1 && lst4[6] == 1) {
      winMi = false;
      p3 += 1;
      qiymat = "0";
      return dialogKorsat(context, 1);
    } else if (lst4[0] == 2 && lst4[1] == 2 && lst4[2] == 2) {
      winMi = false;
      p1 += 1;
      qiymat = "X";
      return dialogKorsat(context, 1);
    } else if (lst4[3] == 2 && lst4[4] == 2 && lst4[5] == 2) {
      winMi = false;
      p1 += 1;
      qiymat = "X";
      return dialogKorsat(context, 1);
    } else if (lst4[6] == 2 && lst4[7] == 2 && lst4[8] == 2) {
      winMi = false;
      p1 += 1;
      qiymat = "X";
      return dialogKorsat(context, 1);
    } else if (lst4[0] == 2 && lst4[3] == 2 && lst4[6] == 2) {
      winMi = false;
      p1 += 1;
      qiymat = "X";
      return dialogKorsat(context, 1);
    } else if (lst4[1] == 2 && lst4[4] == 2 && lst4[7] == 2) {
      winMi = false;
      p1 += 1;
      qiymat = "X";
      return dialogKorsat(context, 1);
    } else if (lst4[2] == 2 && lst4[5] == 2 && lst4[8] == 2) {
      winMi = false;
      p1 += 1;
      qiymat = "X";
      return dialogKorsat(context, 1);
    } else if (lst4[0] == 2 && lst4[4] == 2 && lst4[8] == 2) {
      winMi = false;
      p1 += 1;
      qiymat = "X";
      return dialogKorsat(context, 1);
    } else if (lst4[2] == 2 && lst4[4] == 2 && lst4[6] == 2) {
      winMi = false;
      p1 += 1;
      qiymat = "X";
      return dialogKorsat(context, 1);
    }

    for (var i = 0; i < lst4.length; i++) {
      if (lst4[i] == 1 || lst4[i] == 2) {
        niche.add(i);
      }
    }

    if (niche.length == 9) {
      qiymat == "Durrang";
      p2 += 1;
      return dialogKorsat(context, 0);
    }
  }

  dialogKorsat(context, index) {
    return showDialog(
      context: context,
      builder: (context) => Stack(
        children: [
          AlertDialog(
            title: Row(
              children: [
                Text(
                  index == 0 ? " " : "Bizda yangi G'olib ",
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  index == 1 ? qiymat : "Durrang",
                  style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            content: Container(
              height: MediaQuery.of(context).size.height * 0.24,
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(index == 1
                      ? "assets/image/mushukk.gif"
                      : "assets/image/sitiker.png"),
                ),
              ),
            ),
            actions: [
              ButtonBar(
                buttonPadding: EdgeInsets.symmetric(horizontal: 10),
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Cancel"),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                    ),
                    onPressed: () {
                      lst4.clear();
                      lst4.addAll([0, 0, 0, 0, 0, 0, 0, 0, 0]);
                      for (int i = 0; i < lst1.length; i++) {
                        lst1[i].son = 0;
                      }
                      winMi = true;
                      qiymat = "";
                      setState(() {});
                      Navigator.of(context).pop();
                    },
                    child: Text("Ok"),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

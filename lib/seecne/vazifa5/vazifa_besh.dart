import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeFive extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeFiveState();
}

class _HomeFiveState extends State<HomeFive> {
  int _counter = 0;
  double _counter1 = 0;
  int a = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "Counter App",
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.message),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
              child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: const Image(
                    image: AssetImage("assets/image/tasbeh.jpg"),
                    fit: BoxFit.cover,
                  ))),
          Container(
            height: 200,
            width: 320,
            margin: const EdgeInsets.symmetric(vertical: 190, horizontal: 50),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(60)),
              color: Colors.yellow,
            ),
            child: Center(
              child: Sozlar(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 530, horizontal: 187),
            child: IconButton(
              onPressed: () {
                _counter += 1;
                setState(() {});
                debugPrint("bos !");
              },
              icon: const Icon(
                Icons.fingerprint,
                color: Colors.white,
                size: 30,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [ 
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.59
          ),
           Padding(
            padding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
            child: FloatingActionButton(
              child: const Icon(Icons.fingerprint,color: Colors.white),
              backgroundColor: Colors.black,
              onPressed: () {
                _counter += 1;
                setState(() { 
                });
              },
            ),
          ),
           Padding(
            padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.87),
              child: FloatingActionButton(
              child: const Icon(Icons.sync),
              onPressed: () {
                _counter = 0;
                setState(() {
                  
                });
              },
            ),
          ),
         
        ],
      ),
    );
  }

  // dardagiBir() {
  //   Column(
  //     children: [
  //       Container(
  //         margin: EdgeInsets.symmetric(vertical: 130, horizontal: 70),
  //         height: 500,
  //         width: 280,
  //         color: Colors.transparent,
  //         alignment: Alignment(_counter1, _counter),
  //         child: CircleAvatar(radius: 30, backgroundColor: ranglar(a)),
  //       ),
  //     ],
  //   );
  //   floatingActionButton:
  //   Center(
  //       child: Padding(
  //     padding: EdgeInsets.only(top: 110.0),
  //     child: Column(
  //       children: [
  //         Padding(
  //           padding:
  //               EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.09),
  //           child: FloatingActionButton(
  //             child: const Icon(Icons.keyboard_arrow_up_outlined),
  //             backgroundColor: Colors.blue,
  //             onPressed: increaseConter,
  //           ),
  //         ),
  //         SizedBox(
  //           height: MediaQuery.of(context).size.height * 0.35,
  //         ),
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: [
  //             Padding(
  //               padding: EdgeInsets.only(
  //                   left: MediaQuery.of(context).size.width * 0.09),
  //               child: FloatingActionButton(
  //                 child: const Icon(Icons.keyboard_arrow_left_sharp),
  //                 backgroundColor: Colors.red,
  //                 onPressed: decreaseConter1,
  //               ),
  //             ),
  //             FloatingActionButton(
  //               backgroundColor: Colors.yellow,
  //               child: const Icon(Icons.keyboard_arrow_right_sharp),
  //               onPressed: increaseConter2,
  //             ),
  //           ],
  //         ),
  //         Spacer(),
  //         Padding(
  //           padding:
  //               EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.09),
  //           child: FloatingActionButton(
  //             backgroundColor: Colors.green,
  //             child: const Icon(Icons.keyboard_arrow_down_sharp),
  //             onPressed: decreaseConter,
  //           ),
  //         ),
  //       ],
  //     ),
  //   ));
  // }

  // void decreaseConter() => setState(() {
  //       a = 1;
  //       _counter += 0.1;
  //     });
  // void increaseConter() {
  //   a = 2;
  //   _counter -= 0.1;
  //   setState(() {});
  // }

  // void decreaseConter1() => setState(() {
  //       a = 3;
  //       _counter1 -= 0.1;
  //     });
  // void increaseConter2() {
  //   _counter1 += 0.1;
  //   a = 4;
  //   setState(() {});
  // }

  Text Sozlar() {
    if (_counter < 33) {
      return Text("Subhan Alloh  سبحان الله\n                 $_counter",
          style: const TextStyle(fontSize: 32, color: Colors.black));
    } else if (_counter < 66) {
      return Text("Alhamdulillah  الحمد لله\n                  $_counter",
          style: const TextStyle(fontSize: 32, color: Colors.black));
    } else if (_counter < 99) {
      return Text("Allohu Akbar  الله أكبر\n                   $_counter",
          style: const TextStyle(fontSize: 32, color: Colors.black));
    } else {
      _counter = 0;
      setState(() {});
      return const Text(
        "Raxmat",
        style: TextStyle(color: Colors.black, fontSize: 25),
      );
    }
    return Text("$_counter", style: const TextStyle(fontSize: 33));
  }

  ranglar(int a) {
    if (a == 1) {
      return Colors.green;
    } else if (a == 2) {
      return Colors.blue;
    } else if (a == 3) {
      return Colors.red;
    } else if (a == 4) {
      return Colors.yellow;
    }
  }
}

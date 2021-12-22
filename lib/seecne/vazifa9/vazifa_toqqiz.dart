import 'dart:math';

import 'package:flutter/material.dart';

class VazifaToqqiz extends StatelessWidget {
   VazifaToqqiz({Key? key}) : super(key: key);
  List ranmdom = [1, 2, 3];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        reverse: false,
        itemBuilder: (_, __) {
          return Container(

            child:  Row(
            children: [
              Column(
                children: [
                  Container(
                  height: 400,
                  width:205,
                  
                  child:const  Center(
                    child: Text(""),
                  ),
                  decoration:  BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Colors.red,
                        Colors.pink,
                        Colors.cyan,
                        Colors.blue,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    image: DecorationImage(
                      image: NetworkImage("https://source.unsplash.com/random/${__ +65} "),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(color: Colors.white, width: 8),
                  ),
                ),
                Container(
                  height: 200,
                  width:205,
                  
                  child: const Center(
                    child: Text(""),
                  ),
                  decoration:  BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Colors.red,
                        Colors.pink,
                        Colors.cyan,
                        Colors.blue,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    image: DecorationImage(
                      image: NetworkImage("https://source.unsplash.com/random/${__ +5} "),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(color: Colors.white, width: 8),
                  ),
                ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                  height: 200,
                  width:205,
                  
                  child: const Center(
                    child: Text(""),
                  ),
                  decoration:  BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Colors.red,
                        Colors.pink,
                        Colors.cyan,
                        Colors.blue,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    image: DecorationImage(
                      image: NetworkImage("https://source.unsplash.com/random/${__ +45} "),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(color: Colors.white, width: 8),
                  ),
                ),
                Container(
                  height: 400,
                  width:205,
                  
                  child: const Center(
                    child: Text(""),
                  ),
                  decoration:  BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Colors.red,
                        Colors.pink,
                        Colors.cyan,
                        Colors.blue,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    image: DecorationImage(
                      image: NetworkImage("https://source.unsplash.com/random/${__ +78} "),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(color: Colors.white, width: 8),
                  ),
                ),
                  ],
                ),
                
              ],
            )
          );
        },
        itemCount: 20,
      ),
    );
  }
}

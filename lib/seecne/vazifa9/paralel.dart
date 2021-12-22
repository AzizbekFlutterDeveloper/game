import 'package:flutter/material.dart';

class VAzifa extends StatelessWidget {
  const VAzifa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (_, __) {
          return Expanded(
            child: Row(
              children: [
                Expanded(
                  flex:  __ % 2 == 0? 1 : 2,
                  child: Container(
                    height: 200,
                    width: 205,
                    child: const Center(
                      child: Text(""),
                    ),
                    decoration: BoxDecoration(
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
                        image: NetworkImage(
                            "https://source.unsplash.com/random/${__ + 45} "),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(color: Colors.white, width: 8),
                    ),
                  ),
                ),
                Expanded(
                  flex: __ % 2 == 0? 2 : 1,
                  child: Container(
                    height: 200,
                    width: 205,
                    child: const Center(
                      child: Text(""),
                    ),
                    decoration: BoxDecoration(
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
                        image: NetworkImage(
                            "https://source.unsplash.com/random/${__ + 5} "),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(color: Colors.white, width: 8),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

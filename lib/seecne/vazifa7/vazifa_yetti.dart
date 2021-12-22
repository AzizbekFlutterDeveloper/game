import 'package:flutter/material.dart';

class DasrOlti extends StatefulWidget {
  @override
  State<DasrOlti> createState() => _DasrOltiState();
}

class _DasrOltiState extends State<DasrOlti> {
  List lst = ["Action", "Adventure", "Comedy", "Drama", "Fantastic"];
  List rang = [Colors.orange,Colors.cyan,Colors.red,Colors.yellow,Colors.green];
  int jami = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          "Netfilix",
          style: TextStyle(
            color: Colors.red,
            fontSize: 27,
          ),
        ),
        actions: const [
          Padding(padding: EdgeInsets.all(5), child: Icon(Icons.notifications)),
        ],
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: 8,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      (index == 0)
                          ? Expanded(
                              flex: 3,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      height: 200.0,
                                      width: 300.0,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              "https://source.unsplash.com/random/$index",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                          color: Colors.green,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(20.0))),
                                    );
                                  }),
                            )
                          : Container(
                              height: 230.0,
                              child: Column(
                                mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    children: const [
                                      Text(
                                        "Multiplex Movies",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22.0,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        "More",
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 24.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, index) {
                                          return Container(
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 8.0),
                                            height: 300.0,
                                            width: 130.0,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                    "https://source.unsplash.com/random/${index * 5}",
                                                  ),
                                                  fit: BoxFit.cover,
                                                ),
                                                color: Colors.green,
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(20.0))),
                                          );
                                        }),
                                  ),
                                ],
                              ),
                            ),
                      (index == 0)
                          ? const Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Explore by Genre",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28.0,
                                ),
                              ),
                            )
                          : const Text(""),
                      (index == 0)
                          ? Expanded(
                              flex: 1,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: ElevatedButton(                                         
                                          style: ElevatedButton.styleFrom(
                                            primary: rang[index],                                                                          
                                            shape: const RoundedRectangleBorder(                                             
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(15.0),
                                              ),
                                            ),
                                          ),
                                          onPressed: () {},
                                          child: Text(lst[index]),
                                        ),
                                        );
                                  }),
                            )
                          : const Text(""),
                      Container(
                        height: 230.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  "Special and latest mouvies",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22.0,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "More",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 24.0,
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              flex: 3,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      height: 300.0,
                                      width: 130.0,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              "https://source.unsplash.com/random/${index + 15}",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                          color: Colors.green,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(20.0))),
                                    );
                                  }),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }

  
}

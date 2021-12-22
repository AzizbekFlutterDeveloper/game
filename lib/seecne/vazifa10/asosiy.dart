import 'package:darsbir/seecne/vazifa10/malumot.dart';
import 'package:darsbir/seecne/vazifa10/sahifa_ikki.dart';
import 'package:darsbir/seecne/vazifa10/sahifa_uch.dart';
import 'package:flutter/material.dart';

class Asosiy extends StatefulWidget {
  int indeks;
  Asosiy(this.indeks);
  @override
  _AsosiyState createState() => _AsosiyState();
}

class _AsosiyState extends State<Asosiy> {
  int a = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade900,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: false,
              background: Container(
                margin: const EdgeInsets.all(8.0),
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(40)),
                  color: Colors.red,
                  image: DecorationImage(
                    image: NetworkImage(Malumot.image[widget.indeks]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            expandedHeight: MediaQuery.of(context).size.height * 0.41,
            pinned: true,
            floating: true,
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        Malumot.name[1],
                        style: const TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: IconButton(
                          onPressed: () {
                            a += 1;
                            setState(() {});
                          },
                          icon: a.isEven
                              ? const Icon(
                                  Icons.favorite_outline,
                                  size: 26,
                                  color: Colors.white,
                                )
                              : const Icon(
                                  Icons.favorite,
                                  size: 26,
                                  color: Colors.red,
                                )),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Cappuccino",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(Icons.star, size: 15, color: Colors.amber)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      child: Text(
                        "45",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Text(
                    Malumot.matn[widget.indeks],
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    "Choice of Milk",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 19),
                        child: Text(
                          "Oat Milk",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 19),
                        child: Text(
                          "Soy Milk",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey.shade400,
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 19),
                        child: Text("Almond Milk"),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey.shade400,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          const Padding(
                            padding:
                                EdgeInsets.only(top: 30, left: 10, right: 70),
                            child: Text(
                              "Price",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "\$${49 +(widget.indeks * 25)}",
                              style: const TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ]),
                    Padding(
                      padding:const EdgeInsets.only(top: 40),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SahifaUch()),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 95, vertical: 15),
                          child: Text("BUY  NOW"),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey.shade400,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

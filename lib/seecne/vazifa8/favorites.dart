import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Favorites extends StatelessWidget {
  List icon = [
    Icons.shopping_basket_outlined,
    Icons.shopping_cart_outlined,
    Icons.shop
  ];
  List rang = [
    Colors.red,
    Colors.amber.shade200,
    Colors.indigo,
  ];
  List name = ["Lorem Shop", "Ipsum Shop", "Dolor Shop"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade200,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.88,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(top: 103.3),
            decoration: const BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 210),
                  height: MediaQuery.of(context).size.height * 0.005,
                  width: MediaQuery.of(context).size.height * 0.14,
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 35, top: 20),
                        child: Text(
                          "Shops",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 43, top: 20),
                        child: Text(
                          "Favorites",
                          style: TextStyle(
                            fontSize: 32,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 20),
                            height: MediaQuery.of(context).size.height * 0.16,
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 15, top: 30),
                                      child: CircleAvatar(
                                        radius: 32,
                                        backgroundColor: rang[index],
                                        child: icons(icon[index],53.0,Colors.white),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:const EdgeInsets.only(
                                            left: 20, top: 30),
                                            child: Text(
                                            name[index],
                                            style:const TextStyle(
                                              fontSize: 25,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding:
                                              EdgeInsets.only(left: 20, top: 3),
                                          child: Text(
                                            "Ad eam errem homero ",
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding:
                                              EdgeInsets.only(left: 20, top: 3),
                                          child: Text(
                                            "doming, veniam delet. ",
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 50, top: 30),
                                          child: Text(
                                            "${5.7 - index} %",
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 35,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 50),
                                          child: Text(
                                            "cashback",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.grey.shade400,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: Column(
                        children: [
                          Center(
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.005,
                              width: MediaQuery.of(context).size.height * 0.09,
                              decoration: const BoxDecoration(
                                  color: Colors.red,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40))),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 30, top: 20),
                                child: CircleAvatar(
                                  radius: 32,
                                  backgroundColor: Colors.lightBlue,
                                  child: Icon(Icons.person,
                                      size: 63.0, color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: CircleAvatar(
                                  radius: 35,
                                  backgroundColor: Colors.red,
                                  child: Icon(Icons.shopping_bag_outlined,
                                      size: 53.0, color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 30, top: 20),
                                child: CircleAvatar(
                                  radius: 32,
                                  backgroundColor: Colors.lightBlue,
                                  child: Icon(Icons.card_membership,
                                      size: 53.0, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
 Icon icons(icon, [size = 24.0, color = Colors.black]) {
    return Icon(
      icon,
      size: size,
      color: color,
    );
  }
}

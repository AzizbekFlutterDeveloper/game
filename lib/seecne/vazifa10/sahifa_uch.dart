import 'package:darsbir/seecne/vazifa10/malumot.dart';
import 'package:darsbir/seecne/vazifa10/sahifa_ikki.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class SahifaUch extends StatefulWidget {
  const SahifaUch({Key? key}) : super(key: key);

  @override
  _SahifaUchState createState() => _SahifaUchState();
}

class _SahifaUchState extends State<SahifaUch> {
  // List<Malumot> son = List.generate(10, (index) => Malumot(a: 3));
  List a = [0, 0, 0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 50, left: 0),
            child: Text(
              "Card",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white54,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.height * 0.12,
                      width: MediaQuery.of(context).size.width * 0.1,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(10),
                            height: MediaQuery.of(context).size.height * 0.11,
                            width: MediaQuery.of(context).size.height * 0.11,
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              image: DecorationImage(
                                image: NetworkImage(Malumot.image[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                    top: 10,
                                    left: 8,
                                  ),
                                  child: Text(
                                    "Caappucino",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                    left: 8,
                                  ),
                                  child: Text(
                                    Malumot.name[index],
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                    left: 8,
                                  ),
                                  child: Text(
                                    "\$${49 + (index * 25)}",
                                    style: const TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ]),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(),
                                child: IconButton(
                                    onPressed: a[index] == 0
                                        ? null
                                        : () {
                                            a[index] -= 1;
                                            setState(() {});
                                          },
                                    icon: const Icon(
                                      Icons.remove_circle,
                                      size: 35,
                                      color: Colors.white54,
                                    )),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 4.5, top: 0),
                                height:
                                    MediaQuery.of(context).size.height * 0.035,
                                width: MediaQuery.of(context).size.width * 0.10,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20))),
                                child: Center(
                                  child: Text(
                                    "${a[index]}",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(),
                                child: IconButton(
                                    onPressed: a[index] == 9
                                        ? null
                                        : () {
                                            a[index] += 1;
                                            setState(() {});
                                          },
                                    icon: const Icon(
                                      Icons.add_circle,
                                      size: 35,
                                      color: Colors.white54,
                                    )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    onHorizontalDragEnd: (v) {
                      // son -= 1;
                    },
                  );
                }),
          ),
          Expanded(
            flex: 4,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20, left: 20),
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.9,
                      color: Colors.brown.shade900,
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 40, right: 80),
                            child: Text(
                              "Apply Coupon Code",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 30,
                            color: Colors.white70,
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 25,
                              left: 4,
                            ),
                            child: Icon(
                              Icons.circle,
                              size: 30,
                              color: Colors.brown,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 25, right: 5),
                            child: Icon(
                              Icons.circle,
                              size: 30,
                              color: Colors.brown,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        "Delivery Charges",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10, top: 10),
                      child: Text(
                        "\$49",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 10, bottom: 15),
                      child: Text(
                        "Taxes",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10, top: 10, bottom: 15),
                      child: Text(
                        "\$64.87",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10, top: 15, bottom: 20),
                      child: Text(
                        "Grand Total",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 10, top: 15, bottom: 20),
                      child: Text(
                        "\$${(a[0] * 25) + (a[1] * 74) + (a[2] * 99) + 49 + 64.87}",
                        style: const TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    myAwesomeDialog(context);
                    setState(() {});
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white70,
                  ),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 150, vertical: 15),
                    child: Text(
                      "PAY NOW",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 60),
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.brown.shade800,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SahifaIkki()),
                              );
                            },
                            icon: const Icon(
                              Icons.home,
                              size: 35,
                              color: Colors.white54,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.shopping_cart,
                              size: 35,
                              color: Colors.amber,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite,
                              size: 35,
                              color: Colors.white54,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add_alert,
                              size: 35,
                              color: Colors.white54,
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  myAwesomeDialog(
    context,
  ) {
    return AwesomeDialog(
      context: context,
      dialogType: DialogType.SUCCES,
      title: "You bought the product",
      btnCancel: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text("Cancel"),
      ),
      btnOk: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        style: ElevatedButton.styleFrom(primary: Colors.green),
        child: const Text("Ok"),
      ),
    )..show();
  }
}

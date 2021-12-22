import 'package:flutter/material.dart';

class DasrOlti extends StatefulWidget {
  @override
  State<DasrOlti> createState() => _DasrOltiState();
}

class _DasrOltiState extends State<DasrOlti> {
  int a = 0;
  int like = 0;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.grey,
      body: sahifaIkki(),
    );
  }

  Icon icon(name, [size = 24.0, color = Colors.black]) {
    return Icon(
      name,
      size: size,
      color: color,
    );
  }

  sahifaBir() => Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
            ),
            height: MediaQuery.of(context).size.height * 0.12,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 30.0, horizontal: 20),
                  child: icon(Icons.arrow_back, 30.0),
                ),
                const Padding(
                  padding: EdgeInsets.all(30),
                  child: Text(
                    "Single Item ",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: icon(Icons.short_text, 30.0),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                color: Colors.transparent,
                height: MediaQuery.of(context).size.height * 0.82,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.54,
                      width: MediaQuery.of(context).size.width * 0.74,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 100),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(30.0))),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(15.0),
                                child: icon(Icons.arrow_back, 30.0),
                              ),
                              Padding(
                                padding: EdgeInsets.all(15.0),
                                child: IconButton(
                                  onPressed: () {
                                    like += 1;
                                    setState(() {});
                                  },
                                  icon: like.isEven
                                      ? icon(Icons.favorite_border, 30.0,
                                          Colors.green)
                                      : icon(
                                          Icons.favorite, 30.0, Colors.green),
                                ),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.all(40),
                            child: Text("Choco Donut ",
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Colors.black,
                                )),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                                "This colorful donut is nothing spectacular, but definitrly gets the job done. ",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 100,
                            ),
                            child: Text("${a * 1.5} \$",
                                style: const TextStyle(
                                  fontSize: 35,
                                  color: Colors.black,
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 85),
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    if (a > 0) {
                                      a -= 1;
                                    }
                                    setState(() {});
                                  },
                                  icon: Icon(Icons.remove),
                                ),
                                Text(" ${a} ",
                                    style: const TextStyle(
                                      fontSize: 35,
                                      color: Colors.black,
                                    )),
                                IconButton(
                                  onPressed: () {
                                    a += 1;
                                    setState(() {});
                                  },
                                  icon: Icon(Icons.add),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(30),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Text("Add to card"),
                              ),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.lightGreen),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                child: Container(
                  transform: Matrix4.rotationZ(-0.1),
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width * 0.42,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 110, vertical: 60),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://www.shugarysweets.com/wp-content/uploads/2020/01/baked-chocolate-donuts-recipe-720x720.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                ),
              ),
            ],
          ),
        ],
      );
  sahifaIkki() => Column(
    children: [
      Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
        ),
        height: MediaQuery.of(context).size.height * 0.12,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 30.0, horizontal: 20),
              child: icon(Icons.arrow_back, 30.0),
            ),
            const Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                "Shopping Card ",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: icon(Icons.short_text, 30.0),
            ),
          ],
        ),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [    
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
          ),    
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text("Your Items ",
              style: TextStyle(
                fontSize: 40,
                color: Colors.black,
              )
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "You have 2 item in your cart. ",
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.17,
                width: MediaQuery.of(context).size.width * 0.28,
                margin:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://thumbs.dreamstime.com/b/pink-glazed-donut-one-dount-glaze-isolated-white-background-166029421.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(30.0))),
              ),
              Column(
                children: [
                  const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Donut  ",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          if (a > 0) {
                            a -= 1;
                          }
                          setState(() {});
                        },
                        icon: Icon(Icons.remove),
                      ),
                      Text(" ${a} ",
                          style: const TextStyle(
                            fontSize: 35,
                            color: Colors.black,
                          )),
                      IconButton(
                        onPressed: () {
                          a += 1;
                          setState(() {});
                        },
                        icon: Icon(Icons.add),
                      ),
                      
                    ],
                  ) ,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Text("${a * 1.5} \$",
                  style: const TextStyle(
                    fontSize: 23,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.17,
                width: MediaQuery.of(context).size.width * 0.28,
                margin:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://www.shugarysweets.com/wp-content/uploads/2020/01/baked-chocolate-donuts-recipe-720x720.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(30.0))),
              ),
              Column(
                children: [
                  const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Choco Donut  ",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          if (like > 0) {
                            like -= 1;
                          }
                          setState(() {});
                        },
                        icon: Icon(Icons.remove),
                      ),
                      Text(" ${like} ",
                          style: const TextStyle(
                            fontSize: 35,
                            color: Colors.black,
                          )),
                      IconButton(
                        onPressed: () {
                          like += 1;
                          setState(() {});
                        },
                        icon: Icon(Icons.add),
                      ),
                      
                    ],
                  ) ,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Text("${(like * 2.15).toStringAsFixed(2)} \$",
                  style: const TextStyle(
                    fontSize: 23,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding:  EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Text("Subtotal",
                  style:  TextStyle(
                    fontSize: 23,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Text("${((like * 2.15) +(a * 1.5)).toStringAsFixed(2)} \$",
                  style: const TextStyle(
                    fontSize: 23,
                    color: Colors.black,
                  ),
                ),
              ),
            ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:const [
               Padding(
                padding:  EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Text("Shipping",
                  style:  TextStyle(
                    fontSize: 23,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Text("2.5 \$",
                  style:  TextStyle(
                    fontSize: 23,
                    color: Colors.black,
                  ),
                ),
              ),
            ]
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding:  EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Text("Total",
                  style:  TextStyle(
                    fontSize: 23,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Text("${((like * 2.15) +(a * 1.5)+2.5).toStringAsFixed(2)} \$",
                  style: const TextStyle(
                    fontSize: 23,
                    color: Colors.black,
                  ),
                ),
              ),
            ]
          ),
         
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 130,vertical: 20),
            child: ElevatedButton(
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("Checkount -->"),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Colors.lightGreen),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

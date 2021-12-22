import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Babysitting extends StatelessWidget {
  List lst = ["Amanda, 26", "Elen, 31", "Ashley, 24"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 35, top: 20),
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              child: icon(Icons.person, 35.0, Colors.white),
            ),
          ),
        ],
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.blue),
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            "Babysitting",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                height: MediaQuery.of(context).size.height * 0.26,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 20),
                          child: CircleAvatar(
                            radius: 32,
                            backgroundColor: Colors.white,
                            child: icon(Icons.person, 63.0, Colors.blueAccent),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10, top: 20),
                              child: Text(
                                lst[index],
                                style: const TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10, top: 5),
                                  child: icon(Icons.star, 15.0, Colors.amber),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 3, top: 5),
                                  child: icon(Icons.star, 15.0, Colors.amber),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 3, top: 5),
                                  child: icon(Icons.star, 15.0, Colors.amber),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 3, top: 5),
                                  child: icon(Icons.star, 15.0, Colors.amber),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 3, top: 5),
                                  child: icon(Icons.star, 15.0, (index == 0)? Colors.amber:Colors.grey),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 3),
                              child: Text(
                                "S  M  T  W  T  F  S",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 3),
                              child: Text(
                                "07:30-21:00",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 100, top: 20),
                              child: Text(
                                "\$${12-index}",
                                style:const  TextStyle(
                                  color:  Colors.white,
                                  fontSize: 35,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 100),
                              child: Text(
                                "Per hour",
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
                    const Padding(
                      padding: EdgeInsets.only(left: 20, top: 14),
                      child: Text(
                        "About me: ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Solum facilis ne vim, tractatos petentium eos ei. An eum augue liberavisse, cu movet mentitum eloquentiam.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 130, top: 0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Add to sitlist"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          minimumSize: Size(120, 31),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Icon icon(icon, [size = 24.0, color = Colors.black]) {
    return Icon(
      icon,
      size: size,
      color: color,
    );
  }
}

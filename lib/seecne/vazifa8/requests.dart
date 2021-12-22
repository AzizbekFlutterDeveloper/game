import 'package:flutter/material.dart';

class Request extends StatefulWidget {
  @override
  State<Request> createState() => _RequestsState();
}

class _RequestsState extends State<Request> {
  List lst = ["","Emily Elliott","Piers Merchant","Olivia Burns","Lynette Y.","Jonh Wick",];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 80, left: 20),
                  child: Text(
                    "Requests",
                    style: TextStyle(
                      fontSize: 38,
                      color: Colors.orange,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20, top: 40),
                      child: Text(
                        "Search",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, top: 40),
                      child: icon(Icons.search, 24.0, Colors.grey),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 20,
                  ),
                  color: Colors.grey,
                  height: MediaQuery.of(context).size.height * 0.002,
                  width: MediaQuery.of(context).size.width * 0.9,
                )
              ],
            ),
          ),
          Divider(),
          Expanded(
            flex: 8,
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    (index == 0)
                        ? Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 10, bottom: 30),
                                child: CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 20,
                                  child: icon(Icons.group, 24.0, Colors.white),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 30),
                                child: Text(
                                  "Friends",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 27, right: 10, bottom: 30),
                                child: CircleAvatar(
                                  backgroundColor: Colors.lightBlue,
                                  radius: 24,
                                  child: icon(
                                      Icons.person_add_alt, 24.0, Colors.white),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 30),
                                child: Text(
                                  "Requests",
                                  style: TextStyle(
                                    color: Colors.lightBlue,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 27, right: 10, bottom: 30),
                                child: CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 20,
                                  child: icon(Icons.group, 24.0, Colors.white),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 30),
                                child: Text(
                                  "Online",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          )
                        : Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 25),
                                child: CircleAvatar(
                                  radius: 35,
                                  backgroundImage: NetworkImage(
                                      "https://source.unsplash.com/random/$index"),
                                ),
                              ),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                        EdgeInsets.only(left: 10, top: 30),
                                      child: Text(
                                        "${lst[index]}",
                                        style: const TextStyle(
                                          fontSize: 25,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        "INVITE SENT 2 DAYS AGO",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey.shade400,
                                        ),
                                      ),
                                    ),
                                  ]),
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 50, top: 30),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text("Accept"),
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.lightGreen.shade500,
                                        minimumSize: Size(10, 31),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "Ignore",
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
                    Divider(),
                  ],
                );
              },
            ),
          ),
        ],
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

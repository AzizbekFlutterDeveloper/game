import 'package:flutter/material.dart';

class Instagram extends StatelessWidget {
  const Instagram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.add_box_outlined, size: 30),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.menu, size: 30)
        ],
        elevation: 1,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "a.developer__",
          style: TextStyle(color: Colors.black, fontSize: 26),
        ),
      ),
      body: ListView.builder(
         itemCount: 3,
          itemBuilder: (context, index) {
            return Expanded(
              child: Column(
                children: [
                  index == 0?
                  Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.20,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.transparent,
                          child: Row(
                            children: [
                              Column(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.all(20),
                                    child: CircleAvatar(
                                      radius: 45,
                                      backgroundImage: NetworkImage(
                                          "https://source.unsplash.com/random"),
                                    ),
                                  ),
                                  Text(
                                    "a.developer__",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                              Column(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(top: 40, left: 30),
                                    child: Text(
                                      "2367",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 30),
                                    child: Text(
                                      "post",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top: 40, left: 15),
                                    child: Text(
                                      "3986",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 15),
                                    child: Text(
                                      "follow",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 0),
                                    child: OutlinedButton(
                                      onPressed: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 21),
                                        child: Text(
                                          "Edit Profile",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(top: 40, left: 0),
                                    child: Text(
                                      "4567",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 0),
                                    child: Text(
                                      "following",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.02,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.transparent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              Icon(
                                Icons.menu,
                                size: 30,
                                color: Colors.black,
                              ),
                              Icon(
                                Icons.play_arrow_outlined,
                                size: 30,
                                color: Colors.black,
                              ),
                              Icon(
                                Icons.person_pin_rounded,
                                size: 30,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                       
                      ],
                    ),
                  ):
                  Container(
                    height: MediaQuery.of(context).size.height * 0.652,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.transparent,
                      child: GridView.builder(
                        itemCount: 12,
                        gridDelegate:const  SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                        itemBuilder: (_, __) {
                          return Container(
                            margin: const EdgeInsets.all(2),
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
                                    "https://source.unsplash.com/random/$__"),
                                fit: BoxFit.cover,
                              ),                           
                            ),
                          );
                        },
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

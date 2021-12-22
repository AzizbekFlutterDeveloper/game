import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ToDoList extends StatelessWidget {
   List icon = [
    Icons.list_alt_rounded,
    Icons.card_giftcard_outlined,
    Icons.language_rounded,
    Icons.shopping_cart_rounded
  ];
  List rang = [
    Colors.blue,
    Colors.orange,
    Colors.amber,
    Colors.red,
    Colors.blueAccent,
    Colors.red,
    Colors.blue,
    Colors.amber,
  ];
  List name = [
    "General List", 
    "Wish List", 
    "Go to List",
    "Shopping List",
    "15 thing to do",
    "12 wishes",
    "8 places to go",
    "23 item to buy"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle:
          const SystemUiOverlayStyle(statusBarColor: Colors.blue),
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.only(top: 30),
          child: Text(
            " To Do List ",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 30,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.blue.shade50,
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
        return  Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 55, top: 50),
                child: icons(icon[index],123.0, rang[index + 4]),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Padding(
                    padding: const EdgeInsets.only(left: 40, top: 50),
                    child: Text(
                      name[index],
                      style: const TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 3),
                    child: Text(
                      "You have ${name[index + 4]} ",
                      style: TextStyle(
                        fontSize: 15,
                        color: rang[index],
                      ),
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("View"),
                      style: ElevatedButton.styleFrom(
                        primary: rang[index],
                        minimumSize: Size(80, 31),
                      ),
                    ),
                  ),
                ],
              ),
              
            ],
          );
        },
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

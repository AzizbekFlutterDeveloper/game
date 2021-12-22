import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './dart_folder.dart';

class DasrOlti extends StatelessWidget {
  List<UserModel> users = List.generate(
    15, 
    (index) => UserModel(
      name: "Name $index",
      age: index,
      jins: index.isEven ? true : false,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              color: users[index].jins! ? Colors.blue : Colors.pink,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                    NetworkImage('https://source.unsplash.com/random/$index'),
                ),
                title: Text(users[index].name.toString()),
                subtitle:  Text(users[index].age.toString()),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
            );
          },
          itemCount: users.length
        ));
  }
}

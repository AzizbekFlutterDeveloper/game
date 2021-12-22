import 'package:darsbir/seecne/vazifa11/db.dart';
import 'package:flutter/material.dart';

class Haqida extends StatefulWidget {
  int? son;
  int? index;
  Haqida({Key? key,this.index,this.son}) : super(key: key);

  @override
  _HaqidaState createState() => _HaqidaState();
}

class _HaqidaState extends State<Haqida> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Telefonlar Malumoti"),
      ),
      body: Center(
        child: Container(
          color: Colors.transparent,
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width * 0.9,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: NetworkImage(
                      data[widget.son][0][widget.index],
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  data[widget.son][1][widget.index],
                  style: TextStyle(fontSize: 30),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

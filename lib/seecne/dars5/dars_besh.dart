import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeFive extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeFiveState();
}

class _HomeFiveState extends State<HomeFive> {
  int _counter = 0;
  int _counter1 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: false,
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text(
            "Counter App",
            style: TextStyle(color: Colors.black),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(Icons.message),
            ),
          ],
        ),
        body: Center(
          child: Container(
              margin: _counter1 > 0
              ? _counter1 > 0?
              _counter > 0?
              EdgeInsets.only(bottom: 10.0 * _counter)
              :EdgeInsets.only(top: 10.0 * (_counter * -1))
              :EdgeInsets.only(left: 10.0 * _counter1 )
              :EdgeInsets.only(bottom: 10.0 * _counter1),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.pinkAccent,
                child: Text(
                  "${_counter}",
                  style: const TextStyle(fontSize: 33.0),
                ),
              )),
        ),
        floatingActionButton: Center(
            child: Padding(
          padding: EdgeInsets.only(top: 110.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.09),
                child: FloatingActionButton(
                  child: const Icon(Icons.add),
                  backgroundColor: Colors.green,
                  onPressed: increaseConter,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.09),
                    child: FloatingActionButton(
                      child: const Icon(Icons.remove),
                      onPressed: decreaseConter1,
                    ),
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.green,
                    child: const Icon(Icons.add),
                    onPressed: increaseConter2,
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.09),
                child: FloatingActionButton(
                  child: const Icon(Icons.remove),
                  onPressed: decreaseConter,
                ),
              ),
            ],
          ),
        )));
  }

  void decreaseConter() => setState(() {
        _counter -= 1;
      });
  void increaseConter() {
    _counter += 1;
    setState(() {});
  }

  void decreaseConter1() => setState(() {
        _counter = _counter1;
        _counter1 -= 1;
      });
  void increaseConter2() {
    _counter = _counter1;
    _counter1 += 1;
    setState(() {});
  }
}

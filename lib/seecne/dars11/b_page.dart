import 'package:flutter/material.dart';

class BPage extends StatefulWidget {
  String? title;
  BPage({Key? key, this.title}) : super(key: key);

  @override
  _BPageState createState() => _BPageState();
}

class _BPageState extends State<BPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(widget.title.toString()),
      ),
    );
  }
}

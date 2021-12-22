import 'package:flutter/material.dart';

class MeningDarsUch extends StatelessWidget {
  const MeningDarsUch({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text(
        "Column and Row",
        style: TextStyle(color: Colors.purple),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    body: meningRow(),
  );
   meningRow() => Container(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment:
              MainAxisAlignment.spaceEvenly, // ! Row -> X // Column -> Y
          // crossAxisAlignment: CrossAxisAlignment.stretch, // ! Row -> Y //  Column -> X
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.yellow,
                  child: const Icon(
                    Icons.person,
                    color: Colors.red,
                    size: 63.0,
                  ),
                )),
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.blue,
                  child: const Icon(
                    Icons.person,
                    color: Colors.red,
                    size: 63.0,
                  ),
                )),
            Expanded(
                flex: 3,
                child: Container(
                  color: Colors.black,
                  child: const Icon(
                    Icons.person,
                    color: Colors.red,
                    size: 63.0,
                  ),
                )),
          ],
        ),
      );
  meningRow2() => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  color: Colors.transparent,
                  child: const Icon(
                    Icons.person_pin,
                    color: Colors.red,
                    size: 63.0,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.transparent,
                  child: const Icon(
                    Icons.person_pin,
                    color: Colors.red,
                    size: 63.0,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.transparent,
                  child: const Icon(
                    Icons.person_pin,
                    color: Colors.red,
                    size: 63.0,
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: const Icon(
                Icons.person_pin,
                color: Colors.red,
                size: 63.0,
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: const Icon(
                Icons.person_pin,
                color: Colors.red,
                size: 63.0,
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: const Icon(
                Icons.person_pin,
                color: Colors.red,
                size: 63.0,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  color: Colors.transparent,
                  child: const Icon(
                    Icons.person_pin,
                    color: Colors.red,
                    size: 63.0,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.transparent,
                  child: const Icon(
                    Icons.person_pin,
                    color: Colors.red,
                    size: 63.0,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.transparent,
                  child: const Icon(
                    Icons.person_pin,
                    color: Colors.red,
                    size: 63.0,
                  ),
                ),
              )
            ],
          ),
        ],
      );
  
}

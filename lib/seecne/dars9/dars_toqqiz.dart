import 'package:flutter/material.dart';

class DarsToqqiz extends StatelessWidget {
  const DarsToqqiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        reverse: false,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (_, __) {
          return GestureDetector(
            child: Container(
              margin: const EdgeInsets.all(10),
              child: Center(
                child: Text("$__"),
              ),
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
                  image: NetworkImage("https://source.unsplash.com/random/$__"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(color: Colors.black, width: 8),
                shape: BoxShape.circle,
              ),
            ),
            onDoubleTap: () {
              print("hello");
            },
            onHorizontalDragStart: (v) {
              print("salom");
            },
            onDoubleTapCancel: () {
              print("alik");
            },
          );
        },
        itemCount: 20,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          dialogKorsat(context);
        },
        child: const Icon(Icons.show_chart),
      ),
    );
  }

  dialogKorsat(context) {
    return showDialog(
      context: context,
      builder: (context) => Stack(
        children: [
          AlertDialog(
            title: const Text("Alert"),
            content: SizedBox(
              height: 100,
              width: 100,
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    Text("Hello"),
                    Text("Hello"),
                    Text("Hello"),
                    Text("Hello"),
                    Text("Hello"),
                    Text("Hello"),
                    Text("Hello"),
                    Text("Hello"),
                    Text("Hello")
                  ],
                ),
              ),
            ),
            actions: [
              ButtonBar(
                buttonPadding: EdgeInsets.symmetric(horizontal: 10),
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Cancel"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Ok"),
                  ),
                ],
              )
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.27,
            left: MediaQuery.of(context).size.width * 0.38,
            child: const CircleAvatar(
              backgroundColor: Colors.amber,
              backgroundImage: NetworkImage(
                  "https://c.tenor.com/Hw7f-4l0zgEAAAAC/check-green.gif"),
              radius: 45.0,
            ),
          ),
        ],
      ),
    );
  }
}

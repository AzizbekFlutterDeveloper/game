import 'package:darsbir/seecne/vazifa11/db.dart';
import 'package:darsbir/seecne/vazifa11/tel_haqida.dart';
import 'package:flutter/material.dart';

class Telefon extends StatefulWidget {
  const Telefon({Key? key}) : super(key: key);

  @override
  _TelefonState createState() => _TelefonState();
}

class _TelefonState extends State<Telefon> {
  int son = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: const Text("Telefonlar Olami"),
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              background: Image.asset(
                "assets/image/loading.gif",
                fit: BoxFit.cover,
              ),
            ),
            expandedHeight: MediaQuery.of(context).size.height * 0.3,
            pinned: true,
            floating: true,
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.grey.shade800),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Text(lst[index]),
                      ),
                      onPressed: () {
                        son = index;
                        setState(() {});
                      },
                    ),
                  );
                },
                itemCount: 3,
              ),
            ),
          ),
          SliverGrid(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Stack(children: [
                  InkWell(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 300,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 90.0, left: 5),
                        child: Text(
                          data[son][1][index],
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Haqida(
                            son: son,
                            index: index,
                          ),
                        ),
                      );
                    },
                  ),
                  Positioned(
                    child: Container(
                      margin: EdgeInsets.only(left: 10, bottom: 120),
                      height: MediaQuery.of(context).size.height * 0.48,
                      width: MediaQuery.of(context).size.width * 0.46,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: NetworkImage(data[son][0][index]),
                      )),
                    ),
                  ),
                ]);
              },
              childCount: son == 2 ? 5 : 6,
            ),
          ),
        ],
      ),
    );
  }
}

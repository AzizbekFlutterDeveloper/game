import 'dart:math';

import 'package:darsbir/seecne/dars12/dars_onikki.dart';
import 'package:darsbir/seecne/dars12/data.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  Map<String, String>? brand;
  InfoPage({Key? key, this.brand}) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  int son = Random().nextInt(7) + 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                Positioned.fill(
                  child: FadeInImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      widget.brand!['imageOriginal'].toString(),
                    ),
                    placeholder: const AssetImage("assets/image/loading.gif"),
                  ),
                ),
                Positioned(
                  top: 35,
                  left: 15,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 30,
                    ),
                  ),
                ),
                Positioned(
                  top: 35,
                  right: 15,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DarsOnIkki(),
                          ),
                          (route) => false);
                    },
                    child: const Icon(
                      Icons.home,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 7,
            child: Padding(
              padding:
                  EdgeInsets.all(MediaQuery.of(context).size.height * 0.01),
              child: ListView(
                padding: const EdgeInsets.only(
                  top: 10.0,
                ),
                children: [
                  Text(
                    widget.brand!['name'].toString(),
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.07,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Text(
                    widget.brand!['date'].toString(),
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.05,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Text(
                    widget.brand!['description'].toString(),
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding:
                  EdgeInsets.all(MediaQuery.of(context).size.height * 0.01),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: ElevatedButton(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            brends[son >= 4 ? son - index : son + index]["name"]
                                .toString(),
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.03,
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => InfoPage(
                                brand: brends[
                                    son >= 5 ? son - index : son + index],
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}

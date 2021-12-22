import 'package:darsbir/seecne/dars8/reklama.dart';
import 'package:flutter/material.dart';

class DarsOn extends StatefulWidget {
  const DarsOn({Key? key}) : super(key: key);

  @override
  _DarsOnState createState() => _DarsOnState();
}

class _DarsOnState extends State<DarsOn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: const Text("Sliver App Bar"),
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Hello"),
              centerTitle: false,
              background: Image.network(
                "https://source.unsplash.com/random/",
                fit: BoxFit.cover,
              ),
            ),
            expandedHeight: MediaQuery.of(context).size.height * 0.3,
            pinned: true,
            floating: true,
          ),
          SliverPadding(
            padding: EdgeInsets.all(10),
            sliver: siliverListElementlari(),
          ),
          SliverFixedExtentList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.red,
                    height: 200,
                  ),
                ),
              ],
            ),
            itemExtent: 300,
          ),
          SliverGrid(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    color: Colors.green,
                    height: 200,
                  ),
                );
              },
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(10.0),
                    width: 200,
                    color: Colors.black,
                  );
                },
                itemCount: 20,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DarsSakkiz()));
        },
      ),
    );
  }

  SliverList siliverListElementlari() {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              color: Colors.green,
              height: 200,
            ),
          );
        },
        
        childCount: 10,
      ),
    );
  }
}

import 'package:darsbir/seecne/dars12/data.dart';
import 'package:darsbir/seecne/dars12/infi_page.dart';
import 'package:flutter/material.dart';

class DarsOnIkki extends StatelessWidget {
  const DarsOnIkki({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage(brends[index]['imageCard'].toString()),
                    ),
                    title: Text(brends[index]['name'].toString()),
                    subtitle: Text(brends[index]['budget'].toString()),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InfoPage(
                            brand: brends[index],
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
              itemCount: brends.length,
            ),
          ),
        ],
      ),
    );
  }
}

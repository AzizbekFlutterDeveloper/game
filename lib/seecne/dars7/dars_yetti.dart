import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DarsYetti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:[
          Expanded(
            flex: 5,
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Image.network("https://source.unsplash.com/random/",fit: BoxFit.cover,),

                  
                ),
                const Positioned(
                  bottom: 10,
                  right: 10,
                  child: Opacity(
                    opacity: 0.6,
                    child: Chip(
                      label: Text("234 \$",
                      style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
              ],
            )
          ),
          Expanded(
            flex: 5,
            child: Container(),
          ),
        ],
      ),
    );
  }
}

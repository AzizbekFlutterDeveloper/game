import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MeningSahifam extends StatelessWidget {
  const MeningSahifam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 4,
        actions: const [Icon(Icons.lock_outline, size: 30.0,), 
        Icon(Icons.search_outlined, size: 30.0,),
        Icon(Icons.more_vert_rounded,size: 30.0)],
        actionsIconTheme: IconThemeData(color: Colors.white),
        // automaticallyImplyLeading: false,
        // backwardsCompatibility: true,
        // bottom: PreferredSizeWidget.,
        bottomOpacity: 34.5,
        // brightness: Brightness,
        centerTitle: false,
        excludeHeaderSemantics: true,
        // flexibleSpace:,
        foregroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.white),
        // key: 
        leading: const Icon(Icons.person_pin) ,
        shadowColor: Colors.white,
        leadingWidth: 23.4,
        primary: true,
        // shape: ShapeBorder.lerp(, b, t),
        systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: Colors.black54),
        textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.white)),
        titleTextStyle: const TextStyle(color: Colors.blue, fontSize: 24),
        toolbarHeight: 60.0,
        // toolbarOpacity: 30.0,
        toolbarTextStyle: const TextStyle(color: Colors.blue, fontSize: 34),
        titleSpacing: 30.0,

        title: const Text(
          "Telegram",
           style: TextStyle(
            color: Colors.white
          ),
        ),

      ),
      floatingActionButton:FloatingActionButton(
        onPressed: () {
          debugPrint("Buttonm bosildi !");
        },
        backgroundColor: Colors.black,
        child: const Icon(Icons.edit),
        mini: false,
        tooltip: "ko'zni qis !",
      )
    );
  }
}

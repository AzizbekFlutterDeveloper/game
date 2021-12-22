import 'package:flutter/material.dart';
import './folder.dart';

class DasrOlti extends StatefulWidget {
  @override
  State<DasrOlti> createState() => _DasrOltiState();
}

class _DasrOltiState extends State<DasrOlti> {
  int a = 1;

  List<UserModel> users = List.generate(
    15,
    (index) => UserModel(
      name: "Name $index",
      age: 0,
      jins: false,
      son: index,
      like: index,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Instagram",
          style: TextStyle(
            color: Colors.black,
            fontSize: 27,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8),
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.black,
              child: Icon(Icons.bolt, color: Colors.white),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30, color: Colors.black),
            label: ("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 30, color: Colors.black),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined, size: 30, color: Colors.black),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border, size: 30, color: Colors.black),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin, size: 30, color: Colors.black),
            label: "",
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              height: 120,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (contex, index) {
                  return Column(
                    children: [
                      const SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 1.5),
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.red[500],
                          child: CircleAvatar(
                            radius: 37,
                            backgroundImage: NetworkImage(
                              'https://source.unsplash.com/random/$index',
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 2, vertical: 3),
                        child: Text(
                          "Name: $index",
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Container(
              height: 597,
              width: double.infinity,
              child: ListView.builder(itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: 530,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Card(
                            child: ListTile(
                              leading: CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.red[500],
                                child: CircleAvatar(
                                  radius: 26,
                                  backgroundImage: NetworkImage(
                                    'https://source.unsplash.com/random/$index',
                                  ),
                                ),
                              ),
                              title: Text("_name.$index"),
                              subtitle: const Text("Uzbekistan"),
                              trailing: const Icon(Icons.more_vert_outlined),
                            ),
                          ),
                          Container(
                            height: 350,
                            width: double.infinity,
                            child: Image(
                              image: NetworkImage(
                                  'https://source.unsplash.com/random/${index + 95}'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Row(
                            children: [
                              users[index].like > 0
                                  ? IconButton(
                                      onPressed: () {
                                        users[index].like = 0;
                                        users[index].age += 1;
                                        setState(() {});
                                      },
                                      icon: const Icon(Icons.favorite_border,
                                          size: 35),
                                    )
                                  : IconButton(
                                      onPressed: () {
                                        users[index].age += 1;
                                        setState(() {});
                                      },
                                      icon: const Icon(Icons.favorite,
                                          color: Colors.red, size: 35),
                                    ),
                              const Icon(Icons.chat, size: 35),
                              const SizedBox(
                                width: 10,
                              ),
                              const Icon(Icons.send_rounded, size: 35),
                              Spacer(),
                              users[index].jins == false
                              ? IconButton(
                                  onPressed: () {
                                    users[index].jins = true;
                                    setState(() {});
                                  },
                                  icon: const Icon(Icons.bookmark_border,
                                    size: 35,
                                  ),
                                )
                              : IconButton(
                                  onPressed: () {
                                    users[index].jins = false;
                                  },
                                  icon: const Icon(Icons.bookmark,
                                    color: Colors.black, size: 35,
                                  ),
                                ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              users[index].age.toString(),
                              style: const TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "Izohlar uchun bo'sh joylar",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "View all 12 comments",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "21 hours ago",
                              style: TextStyle(
                                fontSize: 7,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }),
            ),
          ],
        ),
      ),
    );
  }

  telegramAppBar() => AppBar(
        backgroundColor: Colors.black,
        elevation: 4,
        actions: [
          Padding(
              padding: EdgeInsets.all(5),
              child: a.isOdd
                  ? IconButton(
                      onPressed: () {
                        a = 2;
                        setState(() {});
                      },
                      icon: Icon(Icons.lock))
                  : IconButton(
                      onPressed: () {
                        a = 1;
                        setState(() {});
                      },
                      icon: Icon(Icons.lock_open_outlined))),
          Padding(
            padding: EdgeInsets.all(5),
            child: Icon(
              Icons.search_outlined,
              size: 30.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: Icon(Icons.more_vert_rounded, size: 30.0),
          ),
        ],
        bottomOpacity: 34.5,
        iconTheme: const IconThemeData(color: Colors.white),
        leading: const CircleAvatar(
          radius: 10,
          backgroundImage: NetworkImage('https://source.unsplash.com/random'),
        ),
        titleTextStyle: const TextStyle(color: Colors.blue, fontSize: 24),
        toolbarHeight: 60.0,
        toolbarTextStyle: const TextStyle(color: Colors.blue, fontSize: 34),
        titleSpacing: 30.0,
        title: const Text(
          "Telegram",
          style: TextStyle(color: Colors.white),
        ),
      );
  telegramBody() => ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            color: Colors.black45,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage('https://source.unsplash.com/random/$index'),
              ),
              title: Text(
                "Foydalanuvchi $index",
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: const Text(
                "14:18",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing:
                  const Icon(Icons.arrow_forward_ios, color: Colors.white),
            ),
          );
        },
        itemCount: 300,
      );
  addTwo() => ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://source.unsplash.com/random/$index',
                ),
              ),
              title: Text(users[index].name.toString()),
              subtitle: Text(users[index].age.toString()),
              trailing: IconButton(
                onPressed: () {
                  users[index].age += 1;
                  setState(() {});
                },
                icon: const Icon(Icons.add_box_rounded),
              ),
            ),
          );
        },
        itemCount: a,
      );
}

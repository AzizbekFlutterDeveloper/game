import 'package:darsbir/seecne/vazifa10/asosiy.dart';
import 'package:darsbir/seecne/vazifa10/sahifa_uch.dart';
import 'package:flutter/material.dart';
import './malumot.dart';
class SahifaIkki extends StatefulWidget {
  const SahifaIkki({Key? key}) : super(key: key);

  @override
  _SahifaIkkiState createState() => _SahifaIkkiState();
}

class _SahifaIkkiState extends State<SahifaIkki> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade900,
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 15, top: 40),
                          child: Text(
                            "déjà",
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white54,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 35, bottom: 20),
                          child: Text(
                            "Brew",
                            style: TextStyle(
                              fontSize: 45,
                              color: Colors.white54,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.height * 0.07,
                      margin: const EdgeInsets.only(top: 30, right: 10),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://i.pinimg.com/564x/c0/92/1c/c0921c5f03376ccb36af0be21495595b.jpg"),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(color: Colors.amber, width: 3),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.04,
                  width: MediaQuery.of(context).size.width * 0.91,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade500,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child:
                            Icon(Icons.search, size: 26, color: Colors.white54),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 35),
                        child: Text(
                          "Browse your favourite coffee...",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white54,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 7,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 600,
                    decoration: const BoxDecoration(
                        color: Colors.black45,
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(50))),
                    child: const Center(
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          "Flat White      Espresso     Americano      Latte     Cappuccino",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: CustomScrollView(
                    slivers: [
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            return Row(
                              children: [
                                InkWell(
                                  child:Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Container(                                 
                                      height: MediaQuery.of(context).size.height * 0.3,
                                      width: MediaQuery.of(context).size.width * 0.4,
                                      decoration: const  BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.all(Radius.circular(30))
                                      ),
                                      child: Column(
                                        children: [
                                          Stack(
                                            children: [
                                              Container(
                                                margin: const EdgeInsets.only(top:15,left: 15,right: 15),
                                                height: MediaQuery.of(context).size.height * 0.13,
                                                width: MediaQuery.of(context).size.width * 0.35,
                                                decoration:  BoxDecoration(
                                                  color: Colors.red,
                                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                                  image: DecorationImage(
                                                    image: NetworkImage(Malumot.image[index + 3]),
                                                    fit: BoxFit.cover,
                                                  ),                                         
                                                ),                                    
                                              ),
                                              Positioned(
                                                child: Opacity(
                                                  opacity: 0.5,
                                                  child: Container(
                                                    margin: const EdgeInsets.only(top:15,left: 15,right: 15),
                                                    height: MediaQuery.of(context).size.height * 0.03,
                                                    width: MediaQuery.of(context).size.width * 0.12,
                                                    decoration: const BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius: BorderRadius.only(
                                                        topLeft:Radius.circular(50),
                                                        bottomRight: Radius.circular(20)
                                                      ),                                           
                                                    ),
                                                    child: Row(
                                                      children: const [
                                                        SizedBox(width: 5,),
                                                        Icon(Icons.star,size: 20,color: Colors.yellow),
                                                        Text("46",
                                                          style: TextStyle(
                                                            fontSize: 17,
                                                          ),
                                                        ),
                                                      ],
                                                    ),                                    
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 10),
                                            child: Text(Malumot.name[index],
                                              style: const TextStyle(
                                                fontSize: 26,
                                                color: Colors.white70,
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(left: 10),
                                                height: MediaQuery.of(context).size.height * 0.05,
                                                width: MediaQuery.of(context).size.width * 0.21,
                                                decoration: const BoxDecoration(
                                                  color: Colors.white38,
                                                  borderRadius: BorderRadius.horizontal(left: Radius.circular(10))
                                                ),
                                                child: Center(
                                                  child: Text("\$${49 + ((index + 3) * 25)}",
                                                    style: const TextStyle(
                                                      fontSize: 30,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                child: Container(
                                                  margin: const EdgeInsets.only(),
                                                  height: MediaQuery.of(context).size.height * 0.05,
                                                  width: MediaQuery.of(context).size.width * 0.10,                                               
                                                  child: const  Center(
                                                    child: Icon(Icons.add,size: 40,)
                                                  ),
                                                  decoration: const BoxDecoration(
                                                    color: Colors.white70,
                                                    borderRadius: BorderRadius.all( Radius.circular(10))
                                                  ),
                                                ),
                                              
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  onTap: (){
                                    Navigator.push(
                                      context, MaterialPageRoute(builder: (context) => Asosiy(index + 3)),
                                    );
                                  },
                                ),
                                InkWell(
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Container(                                 
                                      height: MediaQuery.of(context).size.height * 0.3,
                                      width: MediaQuery.of(context).size.width * 0.4,
                                      decoration: const  BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.all(Radius.circular(30))
                                      ),
                                      child: Column(
                                        children: [
                                          Stack(
                                            children: [
                                              Container(
                                                margin: const EdgeInsets.only(top:15,left: 15,right: 15),
                                                height: MediaQuery.of(context).size.height * 0.13,
                                                width: MediaQuery.of(context).size.width * 0.35,
                                                decoration:  BoxDecoration(
                                                  color: Colors.red,
                                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                                  image: DecorationImage(
                                                    image: NetworkImage(Malumot.image[index]),
                                                    fit: BoxFit.cover,
                                                  ),                                     
                                                ),                                    
                                              ),
                                              Positioned(
                                                child: Opacity(
                                                  opacity: 0.5,
                                                  child: Container(
                                                    margin: const EdgeInsets.only(top:15,left: 15,right: 15),
                                                    height: MediaQuery.of(context).size.height * 0.03,
                                                    width: MediaQuery.of(context).size.width * 0.12,
                                                    decoration: const BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius: BorderRadius.only(
                                                        topLeft:Radius.circular(50),
                                                        bottomRight: Radius.circular(20)
                                                      ),                                           
                                                    ),
                                                    child: Row(
                                                      children: const [
                                                        SizedBox(width: 5,),
                                                        Icon(Icons.star,size: 20,color: Colors.yellow),
                                                        Text("46",
                                                          style: TextStyle(
                                                            fontSize: 17,
                                                          ),
                                                        ),
                                                      ],
                                                    ),                                    
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const  EdgeInsets.only(left: 10),
                                            child: Text(Malumot.name[index + 3],
                                              style: const TextStyle(
                                                fontSize: 26,
                                                color: Colors.white70,
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                margin: const EdgeInsets.only(left: 10),
                                                height: MediaQuery.of(context).size.height * 0.05,
                                                width: MediaQuery.of(context).size.width * 0.21,
                                                decoration: const BoxDecoration(
                                                  color: Colors.white38,
                                                  borderRadius: BorderRadius.horizontal(left: Radius.circular(10))
                                                ),
                                                child: Center(
                                                  child: Text("\$${49 + (index *25)}",
                                                    style: const TextStyle(
                                                      fontSize: 30,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                child: Container(
                                                  margin: const EdgeInsets.only(),
                                                  height: MediaQuery.of(context).size.height * 0.05,
                                                  width: MediaQuery.of(context).size.width * 0.10,                                               
                                                  child: const  Center(
                                                    child: Icon(Icons.add,size: 40,)
                                                  ),
                                                  decoration: const BoxDecoration(
                                                    color: Colors.white70,
                                                    borderRadius: BorderRadius.all( Radius.circular(10))
                                                  ),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  onTap: (){
                                    Navigator.push(
                                      context, MaterialPageRoute(builder: (context) => Asosiy(index)),
                                    );
                                  },
                                ),
                              ],
                            );
                          },                    
                          childCount: 3,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.only(top: 0),
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width ,
              color: Colors.brown.shade800,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(padding: const EdgeInsets.only(),
                    child: IconButton(onPressed: (){
                     
                    }, icon: const Icon(Icons.home,size: 35,color: Colors.amber,)),
                  ),
                  Padding(padding: const EdgeInsets.only(),
                    child: IconButton(onPressed: (){
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => SahifaUch()),
                      );
                    }, icon: const Icon(Icons.shopping_cart,size: 35,color: Colors.white54,)),
                  ),
                  Padding(padding: const EdgeInsets.only(),
                    child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite,size: 35,color: Colors.white54,)),
                  ),
                  Padding(padding: const EdgeInsets.only(),
                    child: IconButton(onPressed: (){}, icon: const Icon(Icons.add_alert,size: 35,color: Colors.white54,)),
                  ),
                  
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

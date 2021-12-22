import 'package:flutter/material.dart';

class MyDarsTort extends StatelessWidget {
  const MyDarsTort({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
   body: SingleChildScrollView(
     scrollDirection: Axis.vertical,
     child: Column(
      children: [
      Container(
        margin: const EdgeInsets.only(bottom: 15.0),
        height: 300,
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
          color: Colors.deepOrange,
          
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: FadeInImage.assetNetwork(
          fit: BoxFit.cover,
          placeholder: 'assets/image/loading.gif', 
          image: "https://source.unsplash.com/random/4578"),
        ),
        ),
      
      Row(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
       children:[
         Container(
          height: MediaQuery.of(context).size.width * 0.3,
          width:  MediaQuery.of(context).size.width * 0.3, 
          decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
         
        ),
        child: FadeInImage.assetNetwork(
          fit: BoxFit.cover,
          placeholder: 'assets/image/loading.gif', 
          image: "https://source.unsplash.com/random/784"),
        ),
        Container(
          height: MediaQuery.of(context).size.width * 0.3,
          width:  MediaQuery.of(context).size.width * 0.3, 
          decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.deepOrange,
         
        ),
        child: FadeInImage.assetNetwork(
          fit: BoxFit.cover,
          placeholder: 'assets/image/loading.gif', 
          image: "https://source.unsplash.com/random/798"),
        ),
       
        Container(
          height: MediaQuery.of(context).size.width * 0.3,
          width:  MediaQuery.of(context).size.width * 0.3, 
          decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.deepOrange,
         
        ),
        child: FadeInImage.assetNetwork(
          fit: BoxFit.cover,
          placeholder: 'assets/image/loading.gif', 
          image: "https://source.unsplash.com/random/2589"),
        
        ),
       ],
      ),
      SizedBox(height: 15,),
      Row(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
       children:[
         Container(
          height: MediaQuery.of(context).size.width * 0.3,
          width:  MediaQuery.of(context).size.width * 0.3, 
          decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
         
        ),
        child: FadeInImage.assetNetwork(
          fit: BoxFit.cover,
          placeholder: 'assets/image/loading.gif', 
          image: "https://source.unsplash.com/random/7598"),
        ),
        Container(
          height: MediaQuery.of(context).size.width * 0.3,
          width:  MediaQuery.of(context).size.width * 0.3, 
          decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.deepOrange,
         
        ),
        child: FadeInImage.assetNetwork(
          fit: BoxFit.cover,
          placeholder: 'assets/image/loading.gif', 
          image: "https://source.unsplash.com/random/7993"),
        ),
       
        Container(
          height: MediaQuery.of(context).size.width * 0.3,
          width:  MediaQuery.of(context).size.width * 0.3, 
          decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.deepOrange,
         
        ),
        child: FadeInImage.assetNetwork(
          fit: BoxFit.cover,
          placeholder: 'assets/image/loading.gif', 
          image: "https://source.unsplash.com/random/249"),
        
        ),
       ],
      ),
      SizedBox(height: 15,),
      Row(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
       children:[
         Container(
          height: MediaQuery.of(context).size.width * 0.3,
          width:  MediaQuery.of(context).size.width * 0.3, 
          decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
         
        ),
        child: FadeInImage.assetNetwork(
          fit: BoxFit.cover,
          placeholder: 'assets/image/loading.gif', 
          image: "https://source.unsplash.com/random/750"),
        ),
        Container(
          height: MediaQuery.of(context).size.width * 0.3,
          width:  MediaQuery.of(context).size.width * 0.3, 
          decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.deepOrange,
         
        ),
        child: FadeInImage.assetNetwork(
          fit: BoxFit.cover,
          placeholder: 'assets/image/loading.gif', 
          image: "https://source.unsplash.com/random/7945"),
        ),
       
        Container(
          height: MediaQuery.of(context).size.width * 0.3,
          width:  MediaQuery.of(context).size.width * 0.3, 
          decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.deepOrange,
         
        ),
        child: FadeInImage.assetNetwork(
          fit: BoxFit.cover,
          placeholder: 'assets/image/loading.gif', 
          image: "https://source.unsplash.com/random/282"),
        
        ),
       ],
      ),
      SizedBox(height: 15,),
      Row(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
       children:[
         Container(
          height: MediaQuery.of(context).size.width * 0.3,
          width:  MediaQuery.of(context).size.width * 0.3, 
          decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
         
        ),
        child: FadeInImage.assetNetwork(
          fit: BoxFit.cover,
          placeholder: 'assets/image/loading.gif', 
          image: "https://source.unsplash.com/random/758"),
        ),
        Container(
          height: MediaQuery.of(context).size.width * 0.3,
          width:  MediaQuery.of(context).size.width * 0.3, 
          decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.deepOrange,
         
        ),
        child: FadeInImage.assetNetwork(
          fit: BoxFit.cover,
          placeholder: 'assets/image/loading.gif', 
          image: "https://source.unsplash.com/random/7964"),
        ),
       
        Container(
          height: MediaQuery.of(context).size.width * 0.3,
          width:  MediaQuery.of(context).size.width * 0.3, 
          decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.deepOrange,
         
        ),
        child: FadeInImage.assetNetwork(
          fit: BoxFit.cover,
          placeholder: 'assets/image/loading.gif', 
          image: "https://source.unsplash.com/random/275"),
        
        ),
       ],
      ),
      SizedBox(height: 15,),
      Row(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
       children:[
         Container(
          height: MediaQuery.of(context).size.width * 0.3,
          width:  MediaQuery.of(context).size.width * 0.3, 
          decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
         
        ),
        child: FadeInImage.assetNetwork(
          fit: BoxFit.cover,
          placeholder: 'assets/image/loading.gif', 
          image: "https://source.unsplash.com/random/759"),
        ),
        Container(
          height: MediaQuery.of(context).size.width * 0.3,
          width:  MediaQuery.of(context).size.width * 0.3, 
          decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.deepOrange,
         
        ),
        child: FadeInImage.assetNetwork(
          fit: BoxFit.cover,
          placeholder: 'assets/image/loading.gif', 
          image: "https://source.unsplash.com/random/796"),
        ),
       
        Container(
          height: MediaQuery.of(context).size.width * 0.3,
          width:  MediaQuery.of(context).size.width * 0.3, 
          decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.deepOrange,
         
        ),
        child: FadeInImage.assetNetwork(
          fit: BoxFit.cover,
          placeholder: 'assets/image/loading.gif', 
          image: "https://source.unsplash.com/random/287"),
        
        ),
       ],
      ),
      ElevatedButton(
        onPressed: () {}, 
        child: const Text("Elevated Button")
      ),
      TextButton(
        onPressed: (){}, 
        child: const Text("Text Button")
      ),
      OutlinedButton(
        onPressed: (){}, 
        child: const Text("Outlined Button")
      ),
      IconButton(
        onPressed: (){}, 
        icon: const Icon(Icons.home)
      ),
      
    ],
    ), 
    )
    
  );
}

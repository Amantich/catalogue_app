import 'package:flutter/material.dart';


class MyDrawerApp extends StatelessWidget {
  const MyDrawerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
     child: Column(
       children: [
         DrawerHeader(
           decoration:BoxDecoration(color: Theme.of(context).primaryColor),
           child: Row(
             children: [
                CircleAvatar(
                  backgroundImage: AssetImage("images/2.jpg"),
                  radius: 50,
                )
             ],
           ),

         ),
         ListTile(
           title: Text("Home"),
           leading: Icon(Icons.home,color: Theme.of(context).primaryColor,),
           trailing: Icon(Icons.arrow_forward,color: Theme.of(context).primaryColor,),
           onTap: (){
             Navigator.pushNamed(context, "/home");
           },
         ),

         Divider(
           color: Theme.of(context).primaryColor,
           height: 1,
         ),

         ListTile(
           title: Text("products"),
           leading: Icon(Icons.shopping_bag,color: Theme.of(context).primaryColor,),
           trailing: Icon(Icons.arrow_forward,color: Theme.of(context).primaryColor,),
           onTap: (){
             Navigator.pushNamed(context, "/products");
           },
         ),

       ],
     ),
    );
  }
}

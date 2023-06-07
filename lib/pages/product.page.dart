import 'dart:convert';

import 'package:catalogue_app/pages/widgets/product.item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;




class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List<dynamic> products=[];

  @override
  void initState(){
    super.initState();
    http.get(Uri.parse("http://0.0.0.0:9000/products")).then((resp){
      setState(() {
        products=json.decode(resp.body);
      });
    }).catchError((err){
      print("**************************error*************");
      print(err);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("products"),
      ),
      body: ListView.builder(itemBuilder: (context,index){
       return ProductItem(product: products[index],description: false,) ;
      })
    );

  }
}

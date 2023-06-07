import 'package:catalogue_app/pages/widgets/product.item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';



class ProductsDetails extends StatefulWidget {
  final dynamic productId;
  ProductsDetails({super.key, required this.productId});

  @override
  State<ProductsDetails> createState() => _ProductsDetailsState();
}

class _ProductsDetailsState extends State<ProductsDetails> {
  dynamic product;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    http.get(Uri.parse("http://0.0.0.0:9000/products/${widget.productId}")).then((resp){
      setState(() {
        product=json.decode(resp.body);
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
        title: Text("Products Details"),

      ),
        body:Center(
          child:
          (product!=null)?
          ProductItem(product:product,description: true,):
              Container()
          ,
        )
    );
  }
}

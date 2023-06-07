import 'package:catalogue_app/pages/widgets/product_details.widget.dart';
import 'package:flutter/material.dart';


class ProductItem extends StatelessWidget {
  final dynamic product;
  final bool description;
  const ProductItem({super.key, required this.product,required this.description});

  @override
  Widget build(BuildContext context) {
    return ListTile(

      title: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Card(
              color: Colors.orange,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 200,
                    width: 150,
                    child: Card(
                      color: Colors.white,

                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${product["name"]}",
                            ),
                            Text(
                              "MAD ${product["price"]}",
                            ),
                            if(product["promotion"]==true)
                              const Icon(
                                Icons.heart_broken,
                                color: Colors.red,
                              ),
                            Row(
                              children: [
                                for(int i=0;i<product["stars"];i++)
                                  Icon(
                                    Icons.star,
                                    color: Colors.deepOrange,
                                  )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                      onTap: (){
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>ProductsDetails(productId: product["id"])));
                      },
                    child: Image(
                      width: 200,
                      image: AssetImage(
                        "${product["image"]}"
                      ),
                    ),
                  )
                ],
              ),
            ),
            if(description)
              Card(
                child: Text("${product['description']}"),
              )
          ],
        ),
      ),

    );
  }
}

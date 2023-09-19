import 'package:flutter/material.dart';
//import for Product
import 'package:testapp/models/Product.dart';
//import for kDefaultPaddin
import 'package:testapp/constants.dart';


class ItemCard extends StatelessWidget {
  final Product product;
  final Function()? press;

  ItemCard(this.product, this.press);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(//余白を埋める
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              //height: 178,
              //width: 180,
              decoration: BoxDecoration(
                color: product.color, 
                borderRadius: BorderRadius.circular(16)),
              child: Hero(
                tag: "${product.id}",
                child: Image.asset(product.image))),
          ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
          child: 
              Text(product.title, style: TextStyle(color: kTextColor)),
        ),
        Text("\$${product.price}", 
              style: TextStyle(fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}



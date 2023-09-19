import 'package:flutter/material.dart';
import 'package:testapp/models/Product.dart';
import 'package:testapp/constants.dart';




class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 
      const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text("Aristoratic Hand Bag", style: TextStyle(color: Colors.white)),
        Text(product.title,  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 32)),
        SizedBox(height: kDefaultPaddin),
        Row(children: [
          RichText(
            text: TextSpan(children: [
              TextSpan(text: "Price\n"), 
              TextSpan(text: "\$${product.price}", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30)),
            ])),
          SizedBox(width: kDefaultPaddin),
          Expanded(child: Hero(
            tag: "${product.id}",
            child: Image.asset(product.image, fit: BoxFit.fill))),
        ],)
      ],),
    );
  }
}
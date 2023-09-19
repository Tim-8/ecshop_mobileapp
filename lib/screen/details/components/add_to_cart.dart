//import
import 'package:flutter/material.dart';
import 'package:testapp/models/Product.dart';
import 'package:testapp/constants.dart';


class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(children: [
        Container(
          margin: EdgeInsets.only(right: kDefaultPaddin),
          height: 50, width: 50, decoration: BoxDecoration(borderRadius: BorderRadius.circular(18), border: Border.all(color: product.color)),
          child: IconButton(
            icon: Icon(Icons.add_shopping_cart,
            color: product.color),
            onPressed: () {},
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 50,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: product.color,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
              
              ),
            onPressed: () {},
            child: Text(
            "Buy Now", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),)
                      ),
        ),],),
    );
  }
}



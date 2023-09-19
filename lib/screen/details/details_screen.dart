import 'package:flutter/material.dart';
import 'package:testapp/models/Product.dart';
import 'package:testapp/constants.dart';
import 'package:testapp/screen/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product),
    );   
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 10,
      leading: IconButton(//左上のボタン
        icon: Icon(Icons.menu, color: Colors.white),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [//右上のボタン
        IconButton(
          icon: Icon(Icons.search, color: Colors.white),
          onPressed: () {}
        ),
        IconButton(
          icon: Icon(Icons.shopping_bag, color: Colors.white),
          onPressed: () {}),
        SizedBox(width: kDefaultPaddin / 2),
      ]
      );
  }
}

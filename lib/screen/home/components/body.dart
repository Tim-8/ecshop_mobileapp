import 'package:flutter/material.dart';
import 'package:testapp/constants.dart';
import 'package:testapp/models/Product.dart';
//import categories.dart
import 'categories.dart';
import 'item_card.dart';
import 'package:testapp/screen/details/details_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text("Women",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
        ),
        Categories(),
        Expanded(child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: GridView.builder(
            itemCount: products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(//
              crossAxisCount: 2, childAspectRatio: 0.75, crossAxisSpacing: kDefaultPaddin, mainAxisSpacing: kDefaultPaddin),
            itemBuilder: (context, index) => ItemCard(products[index], () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(products[index]))))),
        ),
          )
      ],
    );
  }
}




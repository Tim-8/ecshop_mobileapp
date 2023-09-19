import 'package:flutter/material.dart';
import 'package:testapp/constants.dart';
import 'package:testapp/models/Product.dart';
import 'package:testapp/screen/details/components/product_title_image.dart';
import 'package:testapp/screen/details/components/color_and_size.dart';
import 'package:testapp/screen/details/components/description.dart';
import 'package:testapp/screen/details/components/cart_counter.dart';
import 'package:testapp/screen/details/components/counter_with_fav_btn.dart';
import 'package:testapp/screen/details/components/add_to_cart.dart';


class Body extends StatelessWidget {
  final Product product;
  const Body(this.product);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.35),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin
                  ),
                  height: 500, decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
            )),
            child: Column(children: [
              ColorAndSize(product: product),
              Description(product: product),
              CounterWithFavBtn(),
              AddToCart(product: product)
            ],),),
            ProductTitleWithImage(product: product)
            
                
            ],)

          )
        ]),
    );
  }
}

//import
import 'package:flutter/material.dart';
import 'package:testapp/models/Product.dart';
import 'package:testapp/constants.dart';




class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItem = 1;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      buildOutlineBtn(icon: Icons.remove, press: () {
        if(numOfItem > 1){
          setState(() {
            numOfItem--;
          });
        }
      }),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
        child: Text(numOfItem.toString().padLeft(2, "0"), style: TextStyle(),),
      ),
      buildOutlineBtn(icon: Icons.add, press: () {
        setState(() {
          numOfItem++;
        });
      })],);
    
  }

  SizedBox buildOutlineBtn({required icon, required Function press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13))
        ),
           child: Icon(icon), onPressed: (() => press())),
    );
  }
}
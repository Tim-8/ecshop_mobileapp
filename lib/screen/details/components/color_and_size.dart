import 'package:flutter/material.dart';
import 'package:testapp/models/Product.dart';
import 'package:testapp/constants.dart';
import 'package:testapp/screen/details/details_screen.dart';



class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text("Color"),
          Row(children: [
            ColorDot(color: Color(0xFF356C95), isSelected: true,),
            ColorDot(color: Color(0xFFF8C078)),
            ColorDot(color: Color(0xFFA29B9B)),
          ],)
                  ],
        ),
      ),
      Expanded(
        child: RichText(text: TextSpan(style: TextStyle(color: kTextColor), children: [
          TextSpan(text: 
          "Size\n"),
          TextSpan(text: "${product.size} cm", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28))
        ])),
      )
    ],);
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: kDefaultPaddin / 4,
        right: kDefaultPaddin / 2
      ),
      padding: EdgeInsets.all(2.5),
      height: 24,  width: 24, decoration: BoxDecoration(shape:BoxShape.circle, border: Border.all(color: isSelected ? color : Colors.transparent)),
    child: DecoratedBox(decoration: BoxDecoration(
      color: color,
      shape: BoxShape.circle)));
  }
}


import 'package:flutter/material.dart';
import 'package:testapp/constants.dart';
//import body.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(backgroundColor: Colors.white,
    elevation: 10,
    leading: IconButton(//左上のボタン
      icon: Icon(Icons.menu, color: Colors.black),
      onPressed: (){},
    ),
    actions: [//右上のボタン
      IconButton(
        icon: Icon(Icons.search, color: Colors.black),
        onPressed: () {}
      ),
      IconButton(
        icon: Icon(Icons.shopping_bag, color: Colors.black),
        onPressed: () {}),
      SizedBox(width: kDefaultPaddin / 2),
    ],);
  }
}
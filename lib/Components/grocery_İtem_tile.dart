import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  String itemName;
  String itemPrice;
  String imagePath;
  final color;



  GroceryItemTile({Key? key,required this.color,required this.itemPrice,required this.itemName,required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

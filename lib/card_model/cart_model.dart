import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems=[
    ["Avacado","4.00","lib/Resimler/avocado.png",Colors.green],
    ["Banana","2.50","lib/Resimler/banana.png",Colors.yellow],
    ["Chicken","12.00","lib/Resimler/chicken.png",Colors.brown],
    ["Water","1.00","lib/Resimler/water.png",Colors.blue],

  ];

  get shopItems => _shopItems;

}

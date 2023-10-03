import 'package:flutter/material.dart';

class cartModel extends ChangeNotifier{
  //List of items on sale

  final List _shopItems =[
    //[itemName, itemPrice, imagePath]
    {"Headset","3000","assets/images/glap.png"," The brand new gloves with leather quality!"},
    {"Digital Watch","10000","assets/images/watch.jpeg"," The digital watch with 100hrs batery!"},
    {"book4","9000","assets/images/book4.jpeg","Enjoy the real reading of The Harry Potter Series"},
    {"hoodie","5000","assets/images/hoodie.jpeg","Puma Hoodie - Premium Quality!"},
  ];
  get shopItems => _shopItems;
}
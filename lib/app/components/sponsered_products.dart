import 'package:flutter/material.dart';

class SponserProductsTile extends StatelessWidget {
 final String itemName;
  final String itemPrice;
  final String imagePath;
  final String description;
  const SponserProductsTile(
      {Key? key,
      required this.itemName,
      required this.itemPrice,
      required this.imagePath,
      required this.description})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        //image
        Image.asset(
          imagePath,
          height: 64,
        ),

        //image name

        //image description

        //image price
      ],
    );
  }
}

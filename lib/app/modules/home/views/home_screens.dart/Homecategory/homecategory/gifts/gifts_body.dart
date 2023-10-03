import 'package:eapp/app/modules/home/views/home_screens.dart/Homecategory/homecategory/gifts/gifts.dart';
import 'package:flutter/material.dart';

class GiftsBody extends StatefulWidget {
  const GiftsBody({super.key});

  @override
  State<GiftsBody> createState() => _GiftsBodyState();
}

class _GiftsBodyState extends State<GiftsBody> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
           onTap: () {
            Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>  Gifts(),
          ),
        );
          },
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  child: Container(
                    child: Icon(Icons.wallet_giftcard_sharp),
                    color: Colors.amber[50],
                    height:50,
                    width: 50,
                  ),
                ),
                Text("Gifts"),
              ],
            ),
            
          ),          
        );
  }
}
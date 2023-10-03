import 'package:eapp/app/components/sponsered_products.dart';
import 'package:eapp/app/model/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class sponserPage extends StatefulWidget {
  const sponserPage({Key? key});

  @override
  State<sponserPage> createState() => _sponserPageState();
}

class _sponserPageState extends State<sponserPage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Consumer<cartModel>(
       builder: (context,value,child) {
         return  GridView.builder(
           itemCount: value.shopItems.length,
           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 2,
               ),
           itemBuilder:(context, index){
             return SponserProductsTile(
               itemName: value.shopItems[index][0],
               itemPrice: value.shopItems[index][1],
               imagePath: value.shopItems[index][2],
               description: value.shopItems[index][3],
             );
           }
         );
       }
      ),
    );
  }
}

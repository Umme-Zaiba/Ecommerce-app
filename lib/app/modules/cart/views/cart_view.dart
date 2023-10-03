import 'package:eapp/app/modules/cart/views/body.dart';
import 'package:eapp/app/modules/cart/views/checkout.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  //     appBar: buildAppBar(context),
  //     body: Body(),
  //     bottomNavigationBar: CheckoutCard(),
  //   );
  // }

  // AppBar buildAppBar(BuildContext context) {
  //   return AppBar(
  //     title: Column(
  //       children: [
  //         Text(
  //           "Your Cart",
  //           style: TextStyle(color: Colors.black),
  //         ),
  //         Text(
  //           "items",
  //           // "${demoCarts.length} items",
  //           style: Theme.of(context).textTheme.caption,
  //         ),
  //       ],
  //     ),
     appBar: AppBar(
      title: Text('Your Cart'),
     ),
    );
  }
}

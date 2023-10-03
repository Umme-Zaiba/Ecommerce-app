import 'package:eapp/app/modules/useraccount/views/account_screens/orders/orders.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OrderPage(),
          ),
        );
      },
      highlightColor: const Color.fromARGB(255, 251, 248, 237),
      child: ListTile(
        leading: Icon(Icons.check_box,color: const Color.fromARGB(255, 239, 168, 154)),
        title: Text('Orders'),
      ),
    );
  }
}
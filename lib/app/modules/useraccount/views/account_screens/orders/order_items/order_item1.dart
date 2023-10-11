import 'package:eapp/app/modules/useraccount/views/account_screens/orders/order_items/timeline.dart';
import 'package:flutter/material.dart';


class orderItem1 extends StatefulWidget {
  const orderItem1({super.key});

  @override
  State<orderItem1> createState() => _orderItem1State();
}

class _orderItem1State extends State<orderItem1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Status'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: ListView(
          children: [
            //start iimeline
            MyTimelineTile(
              isFirst: true,
              isLast: false,
              isPast: true,
              eventCard: Text(
                'Order Placed',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            //middle timeline
            MyTimelineTile(
              isFirst: false,
              isLast: false,
              isPast: true,
              eventCard: Text(
                'Out for Delivery',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            //end timeline
            MyTimelineTile(
              isFirst: false,
              isLast: true,
              isPast: false,
              eventCard: Text(
                'Delivered',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

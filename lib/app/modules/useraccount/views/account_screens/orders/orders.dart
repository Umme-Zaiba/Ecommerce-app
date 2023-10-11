import 'package:eapp/app/modules/useraccount/views/account_screens/orders/order_items/order_item1.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Orders'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // //search bar
            // Padding(
            //   padding:
            //       EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 20),
            //   child: Container(
            //     width: double.infinity, // Set width to screen size
            //     height: 50,
            //     decoration: BoxDecoration(
            //       color: Colors.grey.withOpacity(0.1),
            //       border: Border.all(color: Colors.grey),
            //       borderRadius: BorderRadius.circular(35),
            //     ),
            //     child: TextField(
            //       onChanged: (value) {
            //         // Perform search operation
            //       },
            //       decoration: InputDecoration(
            //         enabledBorder: InputBorder.none,
            //         focusedBorder: InputBorder.none,
            //         hintText: "Search your orders here",
            //         prefixIcon: Icon(Icons.search),
            //         contentPadding:
            //             EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            //       ),
            //     ),
            //   ),
            // ),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => orderItem1(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/images/wireless headset.png',
                      height: 80,
                      width: 80,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //Status of order
                        children: [
                          Text(
                            'Order placed, tap to see the status',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Super cool Gloves/Glap - Blue NB120',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(Icons.star_border, color: Colors.amber[700]),
                              Icon(Icons.star_border, color: Colors.amber[700]),
                              Icon(Icons.star_border, color: Colors.amber[700]),
                              Icon(Icons.star_border, color: Colors.amber[700]),
                              Icon(Icons.star_border, color: Colors.amber[700]),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text('Rate this product now'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Divider(
                color: Colors.black.withOpacity(.3),
              ),
            ),

           
          ],
        ),
      ),
    );
  }
}

import 'package:eapp/app/modules/cart/controllers/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../components/Product.dart';

class CartView extends StatefulWidget {
  final List<Product> products;
  CartView({required this.products, required product});

  @override
  _CartViewState createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  List<Product> cartItems = []; // Initialize with an empty list
  //this is the controller after we have define din the main.dart function
  final cartController = Get.find<CartController>();
  @override
  void initState() {
    super.initState();
    // Initialize cartItems with the products passed from the widget
    cartItems = widget.products;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: cartController.cartItems.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add_shopping_cart),
                  Text('No items in the cart.'),
                ],
              ),
            )
          : ListView.builder(
              itemCount: cartController.cartItems.length,
              itemBuilder: (context, index) {
                final product = cartController.cartItems[index];
                return ListTile(
                  
                  leading: Image.asset(product.image),
                  title: Text(product.title),
                  subtitle: Text(product.description),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                          'Price: INR ${double.tryParse(product.price)?.toStringAsFixed(2) ?? "0.00"}'),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          // Implement the remove from cart functionality here
                          setState(() {
                            cartController.cartItems.remove(product);
                          });
                        },
                      ),
                    SizedBox(height: 30,),
                    ],
                  ),
                );
              },
            ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total: INR ${calculateTotal(cartController.cartItems).toStringAsFixed(2)}',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.justify,
              ),
              ElevatedButton(
                onPressed: () {
                  // Implement the "Buy" functionality here
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
                child: Text('Buy'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  double calculateTotal(List<Product> items) {
    double total = 0.0;
    for (var item in items) {
      double itemPrice = double.tryParse(item.price) ?? 0.0;
      total += itemPrice;
    }
    return total;
  }
}

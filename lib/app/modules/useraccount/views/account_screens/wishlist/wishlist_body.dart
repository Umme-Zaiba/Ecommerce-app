import 'package:flutter/material.dart';
import 'package:eapp/app/components/Product.dart'; // Import your Product model here

class WishlistPage extends StatefulWidget {
  final List<Product> wishlistItems;

  WishlistPage({required this.wishlistItems});

  @override
  _WishlistPageState createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wishlist'),
      ),
      body: widget.wishlistItems.isEmpty
          ? Center(
              child: Text('Your wishlist is empty.'),
            )
          : ListView.builder(
              itemCount: widget.wishlistItems.length,
              itemBuilder: (context, index) {
                final product = widget.wishlistItems[index];
                return Card(
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    leading: Image.asset(
                      product.image,
                      width: 80,
                      height: 80,
                    ),
                    title: Text(product.title),
                    subtitle: Text(product.description),
                    trailing: Text('\$${product.price}'),
                  ),
                );
              },
            ),
    );
  }
}

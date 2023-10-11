
import 'package:eapp/app/modules/useraccount/views/account_screens/wishlist/wishlist_body.dart';
import 'package:flutter/material.dart';

class Wishlist1 extends StatefulWidget {
  const Wishlist1({super.key});

  @override
  State<Wishlist1> createState() => _Wishlist1State();
}

class _Wishlist1State extends State<Wishlist1> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WishlistPage(wishlistItems: [],),
          ),
        );
      },
      highlightColor: const Color.fromARGB(255, 251, 248, 237),
      child: ListTile(
        leading: Icon(Icons.favorite, color: const Color.fromARGB(255, 239, 168, 154)),
        title: Text('Wishlist',
          style: TextStyle(fontSize: 18),
        ),
      ),
    ); 
  }
}
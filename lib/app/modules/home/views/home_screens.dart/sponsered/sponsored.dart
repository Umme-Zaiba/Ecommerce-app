import 'package:eapp/app/components/Product.dart';
import 'package:eapp/app/modules/product_details/views/product_details_view.dart';
import 'package:eapp/app/modules/useraccount/views/account_screens/wishlist/wishlist_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SponsoredProducts extends StatefulWidget {
  const SponsoredProducts({Key? key});
  @override
  State<SponsoredProducts> createState() => _SponsoredProductsState();
}

class _SponsoredProductsState extends State<SponsoredProducts> {
  List<Product> sponsoredProducts = [
    Product(
      image: 'assets/images/ps4_console_white_1.png',
      title: 'Logitech Head',
      description: 'The brand new headset',
      price: '5500',
    ),
    Product(
      image: 'assets/images/book4.jpeg',
      title: 'Harry Potter series',
      description: 'Harry Potter and the Half-Blood Prince',
      price: '4000',
    ),
    Product(
      image: 'assets/images/hoodie.jpeg',
      title: 'PUMA Hoodie',
      description: 'Comfortable and natural wear',
      price: '3000',
    ),
    Product(
      image: 'assets/images/olay.jpeg',
      title: 'Olay Naturals',
      description: 'Apply it with pride!',
      price: '2000',
    ),
  ];

  List<Product> wishlist = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Sponsored Products",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.62,
          ),
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: sponsoredProducts.length,
          itemBuilder: (context, index) {
            final product = sponsoredProducts[index];
            return GestureDetector(
              onTap: () {
                Get.to(() => ProductDetailsView(
                    product: sponsoredProducts[index]));
              },
              child: Container(
                padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.cyan[100],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            "-10%",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        IconButton(
                          icon: wishlist.contains(product)
                              ? Icon(Icons.favorite, color: Colors.red)
                              : Icon(Icons.favorite_border, color: Colors.red),
                          onPressed: () {
                            toggleWishlist(product);
                            Get.to(WishlistPage(wishlistItems: wishlist));
                          },
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Image.asset(
                        product.image,
                        height: 100,
                        width: 100,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 8),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        product.title,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        product.description,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[700],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            product.price,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          // Icon(
                          //   Icons.shopping_cart_checkout,
                          //   color: Colors.grey[700],
                          // ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  void toggleWishlist(Product product) {
    if (wishlist.contains(product)) {
      setState(() {
        wishlist.remove(product);
      });
    } else {
      setState(() {
        wishlist.add(product);
      });
    }
  }
}

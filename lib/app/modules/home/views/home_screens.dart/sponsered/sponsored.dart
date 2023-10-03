import 'package:eapp/app/modules/product_details/views/product_details_view.dart';
import 'package:eapp/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SponsoredProducts extends StatefulWidget {
  const SponsoredProducts({Key? key});

  @override
  State<SponsoredProducts> createState() => _SponsoredProductsState();
}
class Product {
  final String image;
  final String title;
  final String description;
  final String price;

  Product(
      {required this.image,
      required this.title,
      required this.description,
      required this.price});
}
class _SponsoredProductsState extends State<SponsoredProducts> {
  List<Product> sponsoredProducts = [
    Product(
      image: 'assets/images/ps4_console_white_1.png',
      title: 'Logitech Head',
      description: 'The brand new headset with a long-lasting battery',
      price: 'INR 55',
    ),
    Product(
      image: 'assets/images/book4.jpeg',
      title: 'Harry potter',
      description: 'High-quality sound for your music and calls',
      price: 'INR 40',
    ),
  ];

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
            return GestureDetector(
              onTap: () {
                Get.to(() => ProductDetailsView(), arguments: sponsoredProducts[index]); // Navigate to product details screen
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
                            "-50%",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Image.asset(
                        sponsoredProducts[index].image,
                        height: 100,
                        width: 100,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 8),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        sponsoredProducts[index].title,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        sponsoredProducts[index].description,
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
                            sponsoredProducts[index].price,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          Icon(
                            Icons.shopping_cart_checkout,
                            color: Colors.grey[700],
                          ),
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
}
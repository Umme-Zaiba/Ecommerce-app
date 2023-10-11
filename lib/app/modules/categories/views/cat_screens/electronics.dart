import 'package:eapp/app/modules/product_details/views/product_details_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:eapp/app/components/Product.dart';

import '../../../../routes/app_pages.dart';

class Electronics extends StatefulWidget {
  const Electronics({Key? key});

  @override
  State<Electronics> createState() => _ElectronicsState();
}

class _ElectronicsState extends State<Electronics> {
  List<Product> productList = [
    Product(
      image: 'assets/images/ps4_console_white_1.png',
      title: 'Logitech Head',
      description: 'The brand new headset with long-lasting battery',
      price: '\$55',
    ),
    Product(
      image: 'assets/images/wireless headset.png',
      title: 'Logitech Head',
      description: 'The brand new headset with long-lasting battery',
      price: '\$55',
    ),
    Product(
      image: 'assets/images/glap.png',
      title: 'Logitech Head',
      description: 'The brand new headset with long-lasting battery',
      price: '\$55',
    ),
    Product(
      image: 'assets/images/watch.jpeg',
      title: 'Logitech Head',
      description: 'The brand new headset with long-lasting battery',
      price: '\$55',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Electronics'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.62,
              ),
              itemCount: productList.length,
              itemBuilder: (context, index) {
                return Container(
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
                      InkWell(
                        onTap: () {
                          Get.to(() => ProductDetailsView(product: productList[index]));
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Image.asset(
                            productList[index].image,
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 8),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          productList[index].title,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          productList[index].description,
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
                              productList[index].price,
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
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

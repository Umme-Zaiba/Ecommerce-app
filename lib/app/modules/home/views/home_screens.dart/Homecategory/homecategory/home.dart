import 'package:eapp/app/modules/product_details/views/product_details_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:eapp/app/components/Product.dart';

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Product> productList = [
    Product(
      image: 'assets/images/home1.jpeg',
      title: 'Refrigerator',
      description: 'High-capacity refrigerator with energy efficiency',
      price: '\$599',
    ),
    Product(
      image: 'assets/images/home2.jpeg',
      title: 'Washing Machine',
      description: 'Top-load washing machine with multiple wash',
      price: '\$399',
    ),
    Product(
      image: 'assets/images/home3.jpeg',
      title: 'Microwave Oven',
      description: 'Compact microwave oven with quick heating',
      price: '\$99',
    ),
    Product(
      image: 'assets/images/home4.jpeg',
      title: 'Vacuum Cleaner',
      description: 'Powerful vacuum cleaner for a clean home',
      price: '\$149',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Appliances'),
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
                              "-30%",
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
                            // Icon(
                            //   Icons.shopping_cart_checkout,
                            //   color: Colors.grey[700],
                            // ),
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

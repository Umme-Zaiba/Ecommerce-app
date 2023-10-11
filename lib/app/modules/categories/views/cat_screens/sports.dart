import 'package:flutter/material.dart';
import 'package:eapp/app/modules/product_details/views/product_details_view.dart';
import 'package:eapp/app/components/Product.dart';
import 'package:get/get.dart';

class Sports extends StatefulWidget {
  const Sports({Key? key});

  @override
  State<Sports> createState() => _SportsState();
}

class _SportsState extends State<Sports> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sports'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.62,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                _buildProductCard(
                  'assets/images/tennis.jpeg',
                  "Sport 1",
                  "Description of Sport 1",
                  "\$40",
                ),
                _buildProductCard(
                  'assets/images/golf.jpeg',
                  "Sport 2",
                  "Description of Sport 2",
                  "\$35",
                ),
                _buildProductCard(
                  'assets/images/bat.jpeg',
                  "Sport 3",
                  "Description of Sport 3",
                  "\$50",
                ),
                _buildProductCard(
                  'assets/images/chess.jpeg',
                  "Sport 4",
                  "Description of Sport 4",
                  "\$45",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductCard(
    String imagePath,
    String productName,
    String productDescription,
    String productPrice,
  ) {
    return InkWell(
      onTap: () {
        Get.to(() => ProductDetailsView(product: Product(
          image: imagePath,
          title: productName,
          description: productDescription,
          price: productPrice,
        )));
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
                imagePath,
                height: 100,
                width: 100,
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 8),
              alignment: Alignment.centerLeft,
              child: Text(
                productName,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              child: Text(
                productDescription,
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
                    productPrice,
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
  }
}

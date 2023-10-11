import 'package:flutter/material.dart';
import 'package:eapp/app/modules/product_details/views/product_details_view.dart';
import 'package:eapp/app/components/Product.dart';
import 'package:get/get.dart';

class Books extends StatefulWidget {
  const Books({Key? key});

  @override
  State<Books> createState() => _BooksState();
}

class _BooksState extends State<Books> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Books'),
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
                  'assets/images/book1.jpeg',
                  "Book 1",
                  "Description of book 1",
                  "\$20",
                ),
                _buildProductCard(
                  'assets/images/book2.jpeg',
                  "Book 2",
                  "Description of book 2",
                  "\$25",
                ),
                _buildProductCard(
                  'assets/images/book3.jpeg',
                  "Book 3",
                  "Description of book 3",
                  "\$18",
                ),
                _buildProductCard(
                  'assets/images/book4.jpeg',
                  "Book 4",
                  "Description of book 4",
                  "\$30",
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

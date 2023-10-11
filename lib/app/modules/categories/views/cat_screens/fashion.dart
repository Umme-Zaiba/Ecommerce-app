import 'package:flutter/material.dart';
import 'package:eapp/app/modules/product_details/views/product_details_view.dart';
import 'package:eapp/app/components/Product.dart';
import 'package:get/get.dart';

class Fashion_page extends StatefulWidget {
  const Fashion_page({Key? key});

  @override
  State<Fashion_page> createState() => _Fashion_pageState();
}

class _Fashion_pageState extends State<Fashion_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fashion'),
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
                  'assets/images/hoodie.jpeg',
                  "Hoodie",
                  "Comfortable hoodie for every occasion",
                  "\$45",
                ),
                _buildProductCard(
                  'assets/images/jeans.jpeg',
                  "Jeans",
                  "Stylish jeans for a trendy look",
                  "\$55",
                ),
                _buildProductCard(
                  'assets/images/nacklace.jpeg',
                  "Necklace",
                  "Elegant necklace to complement your style",
                  "\$30",
                ),
                _buildProductCard(
                  'assets/images/tshirt.jpeg',
                  "T-Shirt",
                  "Casual t-shirt for a relaxed day",
                  "\$25",
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

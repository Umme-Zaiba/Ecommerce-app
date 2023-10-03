import 'package:flutter/material.dart';

class Books extends StatefulWidget {
  const Books({super.key});

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
              
              // for(int i=0;i<7;i++)
               Container(
                  padding: EdgeInsets.only(left: 15,right: 15,top: 10),
                  margin: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
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
                          // Get.toNamed(Routes.PRODUCT_DETAILS);
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Image.asset(
                            'assets/images/book1.jpeg',
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 8),
                        alignment: Alignment.centerLeft,
                        child: Text("Logitech Head",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),              
                      ),
                      Container(
                        child: Text(
                          "The brand new headset with long lasting battery",
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
                              "\$55",
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
               Container(
                  padding: EdgeInsets.only(left: 15,right: 15,top: 10),
                  margin: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
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
                          // Get.toNamed(Routes.PRODUCT_DETAILS);
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Image.asset(
                            'assets/images/book2.jpeg',
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 8),
                        alignment: Alignment.centerLeft,
                        child: Text("Logitech Head",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),              
                      ),
                      Container(
                        child: Text(
                          "The brand new headset with long lasting battery",
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
                              "\$55",
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
               Container(
                  padding: EdgeInsets.only(left: 15,right: 15,top: 10),
                  margin: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
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
                          // Get.toNamed(Routes.PRODUCT_DETAILS);
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Image.asset(
                            'assets/images/book3.jpeg',
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 8),
                        alignment: Alignment.centerLeft,
                        child: Text("Logitech Head",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),              
                      ),
                      Container(
                        child: Text(
                          "The brand new headset with long lasting battery",
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
                              "\$55",
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
               Container(
                  padding: EdgeInsets.only(left: 15,right: 15,top: 10),
                  margin: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
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
                          // Get.toNamed(Routes.PRODUCT_DETAILS);
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Image.asset(
                            'assets/images/book4.jpeg',
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 8),
                        alignment: Alignment.centerLeft,
                        child: Text("Logitech Head",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),              
                      ),
                      Container(
                        child: Text(
                          "The brand new headset with long lasting battery",
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
                              "\$55",
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
              
            ],
          ),
        
          ],
        ),
      ),
    );
  }
}
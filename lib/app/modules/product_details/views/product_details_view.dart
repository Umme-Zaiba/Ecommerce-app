import 'package:eapp/app/modules/home/views/home_screens.dart/sponsered/sponsored.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/product_details_controller.dart';

class ProductDetailsView extends GetView<ProductDetailsController> {
  const ProductDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // final product = Get.arguments as? Product;
    //  if (product == null) {
    // Handle case when product is null, for example show an empty widget or an error message
    return Scaffold(
      appBar: AppBar(title: Text('Product page')),
      body: Center(
        child: Text('Product - found'),
      ),
    );
  }
// return Scaffold(
//       appBar: AppBar(
//         title: Text('Product Details'),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Image.asset(
//             product.image,
//             height: 200,
//             width: double.infinity,
//             fit: BoxFit.cover,
//           ),
//           Padding(
//             padding: EdgeInsets.all(16),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   product.title,         
//                   style: TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(height: 8),
//                 Text(
//                   'Price: \$${product.price.toStringAsFixed(2)}',
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(height: 8),
//                 Text(
//                   'Description: ${product.description}',
//                   style: TextStyle(fontSize: 16),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
  
  
// }
    
  }


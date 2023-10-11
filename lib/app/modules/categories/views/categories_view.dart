import 'package:eapp/app/modules/categories/views/cat_screens/beauty.dart';
import 'package:eapp/app/modules/categories/views/cat_screens/books.dart';
// import 'package:eapp/app/modules/categories/views/cat_screens/beauty/beauty_body.dart';
// import 'package:eapp/app/modules/categories/views/cat_screens/books/book_body.dart';
import 'package:eapp/app/modules/categories/views/cat_screens/electronics.dart';
// import 'package:eapp/app/modules/categories/views/cat_screens/electronics/electronics_body.dart';
import 'package:eapp/app/modules/categories/views/cat_screens/fashion.dart';
import 'package:eapp/app/modules/categories/views/cat_screens/sports.dart';
import 'package:eapp/app/modules/categories/views/cat_screens/toys.dart';
// import 'package:eapp/app/modules/categories/views/cat_screens/fashion/fashion_body.dart';
import 'package:flutter/material.dart';

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Categories'),
//       ),
//       body: SingleChildScrollView(
//         child: GridView.builder(
//           shrinkWrap: true,
//           physics: NeverScrollableScrollPhysics(),
//           itemCount: categories.length,
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             crossAxisSpacing: 10,
//             mainAxisSpacing: 20,
//           ),
//           itemBuilder: (BuildContext context, int index) {
//             return Container(
//               child: GestureDetector(
//                 onTap: () {
//                   // TODO: Navigate to category page
//                 },
//                 child: Padding(
//                   padding: const EdgeInsets.all(15.0),
//                   child: Card(
//                     child: Center(
//                       child: Text(categories[index]),
//                     ),
//                     color: Colors.amber[50],
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

class CategoriesView extends StatefulWidget {
  const CategoriesView({super.key});

  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  void _navigateToCategoryPage(String categoryName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          switch (categoryName) {
            case 'Electronics':
              return Electronics();
            case 'Fashion':
              return Fashion_page();
            case 'Beauty':
              return Beauty();
            case 'Books':
              return Books();
            case 'Sports':
              return Sports(); // Replace with actual Sports page
            case 'Toys':
              return Toys(); // Replace with actual Toys page
            default:
              return SizedBox.shrink();
          }
        },
      ),
    );
  }

  Widget _buildCategoryCard(
      String categoryName, IconData iconData, Color iconColor) {
    return GestureDetector(
      onTap: () {
        _navigateToCategoryPage(categoryName);
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.amber[50],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconData,
                size: 38,
                color: iconColor,
              ),
              SizedBox(height: 10),
              Text(
                categoryName,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 20,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                _buildCategoryCard('Electronics', Icons.cable, Colors.black),
                _buildCategoryCard('Fashion', Icons.video_camera_front, Colors.pink),
                _buildCategoryCard('Beauty', Icons.brush, Colors.blue),
                _buildCategoryCard('Books', Icons.library_books, Colors.brown),
                _buildCategoryCard('Sports', Icons.sports_basketball, Colors.orange),
                _buildCategoryCard('Toys', Icons.toys, Colors.yellow),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:eapp/app/modules/categories/views/cat_screens/beauty/beauty_body.dart';
import 'package:eapp/app/modules/categories/views/cat_screens/books/book_body.dart';
import 'package:eapp/app/modules/categories/views/cat_screens/electronics/electronics.dart';
import 'package:eapp/app/modules/categories/views/cat_screens/electronics/electronics_body.dart';
import 'package:eapp/app/modules/categories/views/cat_screens/fashion/fashion_body.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../controllers/categories_controller.dart';

// class CategoriesView extends GetView<CategoriesController> {
//   CategoriesView({Key? key}) : super(key: key);

//   final List<String> categories = [
//     'Electronics',
//     'Fashion',
//     'Beauty',
//     'Books',
//     'Sports',
//     'Toys',
//   ];

//   @override
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
              //  childAspectRatio: 0.62,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                elctronicsPage(),
                
                fashionPage(),

                Beautypage(),
                BookPage(),
                
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Electronics(),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.amber[50],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.sports_basketball),
                        Text(
                          'Sports',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Electronics(),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.amber[50],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.toys),
                        Text(
                          'Toys',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
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

import 'package:eapp/app/modules/categories/views/categories_view.dart';
import 'package:eapp/app/modules/home/views/home_screens.dart/Homecategory/homecategory/bills/bills_body.dart';
import 'package:eapp/app/modules/home/views/home_screens.dart/Homecategory/homecategory/deals/deals_body.dart';
import 'package:eapp/app/modules/home/views/home_screens.dart/Homecategory/homecategory/gifts/gifts_body.dart';
import 'package:flutter/material.dart';

class homecategories extends StatefulWidget {
  const homecategories({super.key});

  @override
  State<homecategories> createState() => _homecategoriesState();
}

class _homecategoriesState extends State<homecategories> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DealsPage(),
        BillsBody(),

        // GestureDetector(
        //   onTap: () {
            
        //   },
        //   child: Container(
        //     child: Column(
        //       children: [
        //         SizedBox(
        //           child: Container(
        //             child: Icon(Icons.games_sharp),
        //             color: Colors.amber[50],
        //             height:50,
        //             width: 50,
        //           ),
        //         ),
        //         Text("Games"),
        //       ],
        //     ),
            
        //   ),          
        // ),
       GiftsBody(),
        GestureDetector(
          onTap: () {
            Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>  CategoriesView(),
          ),
        );
          },
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  child: Container(
                    child: Icon(Icons.more),
                    color: Colors.amber[50],
                    height:50,
                    width: 50,
                  ),
                ),
                Text("More"),
              ],
            ),
            
          ),          
        ),

 
      ],
    );
  }
}
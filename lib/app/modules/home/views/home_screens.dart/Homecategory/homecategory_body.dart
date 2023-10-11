import 'package:eapp/app/modules/categories/views/cat_screens/electronics.dart';
import 'package:eapp/app/modules/categories/views/categories_view.dart';
import 'package:eapp/app/modules/home/views/home_screens.dart/Homecategory/homecategory/bills.dart';
import 'package:eapp/app/modules/home/views/home_screens.dart/Homecategory/homecategory/deals.dart';
import 'package:eapp/app/modules/home/views/home_screens.dart/Homecategory/homecategory/gifts.dart';
import 'package:eapp/app/modules/home/views/home_screens.dart/Homecategory/homecategory/home.dart';

import 'package:flutter/material.dart';

class HomeCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildCategory(context, Icons.flash_on, "Flash deal", Deals()),
        buildCategory(context, Icons.cable, "Electronics", Electronics()),
        buildCategory(context, Icons.home, "Home", Home()),
        buildCategory(context, Icons.wallet_giftcard_sharp, "Gifts", Gifts()),
        buildCategory(context, Icons.more, "More", CategoriesView()),
      ],
    );
  }

  Widget buildCategory(
      BuildContext context, IconData icon, String label, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => page,
          ),
        );
      },
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(10), // Add this line for rounded border
              color: Color.fromARGB(255, 248, 233, 182),
            ),
            child: Icon(icon),
            height: 50,
            width: 50,
          ),
          Text(label),
        ],
      ),
    );
  }
}

// import 'package:eapp/app/modules/bottomnavbar/views/bottomnavbar_view.dart';
// import 'package:eapp/app/modules/cart/views/cart_view.dart';
// import 'package:eapp/app/modules/categories/views/categories_view.dart';
import 'package:eapp/app/modules/home/views/home_screens.dart/discountbanner.dart';
import 'package:eapp/app/modules/home/views/home_screens.dart/Homecategory/homecategory/homecategory_body.dart';
import 'package:eapp/app/modules/home/views/home_screens.dart/sponsered/sponser_body.dart';
// import 'package:eapp/app/modules/home/views/home_screens.dart/sponsered/sponsored.dart';
// import 'package:eapp/app/modules/home/views/popularproducts.dart';

import 'package:eapp/app/modules/home/views/home_screens.dart/searchbar.dart';
import 'package:eapp/app/modules/home/views/home_screens.dart/specialoffers.dart';
import 'package:eapp/app/modules/home/views/home_screens.dart/sponsered/sponsored.dart';
// import 'package:eapp/app/modules/notification/views/notification_view.dart';
// import 'package:eapp/app/modules/useraccount/views/useraccount_view.dart';
// import 'package:eapp/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

// import 'package:get/get.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';

// import '../controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});


  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context){
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height:20),
              searchbar(),

              SizedBox(height:10),
              DiscountBanner(),

              SizedBox(height:20),
              homecategories(),
              
              SizedBox(height:20),
              specialoffers(),

              SizedBox(height:20),
              SponsoredProducts(),

              // PopularProducts(),

              // BottomnavbarView(),
// 
              

            ],
          ),
        ),
      ),
    );
  }
}





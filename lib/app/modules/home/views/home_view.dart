import 'package:eapp/app/modules/home/views/home_screens.dart/discountbanner.dart';
import 'package:eapp/app/modules/home/views/home_screens.dart/Homecategory/homecategory_body.dart';
import 'package:eapp/app/modules/home/views/home_screens.dart/searchbar.dart';
import 'package:eapp/app/modules/home/views/home_screens.dart/specialoffers.dart';
import 'package:eapp/app/modules/home/views/home_screens.dart/sponsered/sponsored.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // Set the vertical alignment
            crossAxisAlignment: CrossAxisAlignment.center, // Set the horizontal alignment
            children: [
              SizedBox(height: 20),
              searchbar(),

              SizedBox(height: 10),
              DiscountBanner(),

              SizedBox(height: 20),
              HomeCategories(),

              SizedBox(height: 20),
              // specialoffers(),

              SizedBox(height: 20),
              SponsoredProducts(),
            ],
          ),
        ),
      ),
    );
  }
}

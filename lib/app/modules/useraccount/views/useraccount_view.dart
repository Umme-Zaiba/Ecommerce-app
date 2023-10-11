// import 'package:eapp/app/modules/cart/views/body.dart';
import 'package:eapp/app/modules/useraccount/views/account_screens/coupons/coupons_body.dart';
import 'package:eapp/app/modules/useraccount/views/account_screens/edit_profile/edit_profile_body.dart';
import 'package:eapp/app/modules/useraccount/views/account_screens/orders/order.dart';
import 'package:eapp/app/modules/useraccount/views/account_screens/orders/orders_body.dart';
import 'package:eapp/app/modules/useraccount/views/account_screens/terms/terms_body.dart';
import 'package:eapp/app/modules/useraccount/views/account_screens/wishlist/wishlist1.dart';
// import 'package:eapp/app/modules/useraccount/views/account_screens/wishlist/wishlist_body.dart';
import 'package:eapp/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/useraccount_controller.dart';
// import 'package:shop_app/components/coustom_bottom_nav_bar.dart';
// import 'package:shop_app/enums.dart';

class UseraccountView extends GetView<UseraccountController> {
  static String routeName = "/profile";
  
  get product => null;
  
  get address => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left:16,right: 16,top: 16,bottom: 16),
          child: Column(            
            children: [
              EditProfile(),
              Coupons(),
              Orders(),
              Wishlist1(),             
              TermsAndPolicies(),
              SizedBox(height: 20),
              // logout button              
              Container(
                width: 240,
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.LOGIN);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Text(
                      "Log out",
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 18,
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.cyan[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 10,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

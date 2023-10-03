import 'package:eapp/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../controllers/intro_screen_controller.dart';
import 'package:flutter/painting.dart';

class IntroScreenView extends GetView<IntroScreenController> {
  const IntroScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
     body: Center(
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Lottie.network('https://lottie.host/88c0868c-bfec-4f0f-b9d2-f708d2e1416a/ysJKDASS2w.json'),
          Lottie.asset('assets/lottie/cart.json'),
          SizedBox(height: 70),

          ElevatedButton(
            onPressed: () {
              Get.offNamed(Routes.LOGIN);
            },
            child: Text(
              "Let's get started!",
              style: TextStyle(
                color: Colors.grey[700],
                
                fontSize: 25,
              ),
            ),
            style: ElevatedButton.styleFrom(
                primary: Colors.cyan[100],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              elevation:10,
            ),
          ),
        ],
      ),
     ),
    );
  }
}

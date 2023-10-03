import 'package:eapp/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

// import '../controllers/signup_controller.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white10,
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset('assets/lottie/sigup.json',
                  height: 180),
                  // Welcome texts
                  // Icon(
                  //   Icons.shopping_bag_rounded,
                  //   size: 100,
                  // ),
                  SizedBox(height: 10),
                  Text(
                    'Welcome!',
                    style: GoogleFonts.bebasNeue(
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Get ready to fill your bag with treasures!",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 30),
                  // email textfield
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
                          ),
                        ),
                      ),
                    ),
                  ),
      
                  // password textfield
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Confirm Password',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  // Sign in button
                  Padding(
                    padding: EdgeInsets.all(0.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed(Routes.LOGIN);
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 115.0, vertical: 12.0),
                        child: Text(
                          "Register",
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
                  SizedBox(height: 25),
         
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

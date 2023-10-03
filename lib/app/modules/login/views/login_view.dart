import 'package:eapp/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SizedBox(height: 25),
                  Lottie.asset(
                    'assets/lottie/login.json',
                    height: 180,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Hello again!',
                    style: GoogleFonts.bebasNeue(
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Welcome back!",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 30),
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
                          controller: emailController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
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
                          controller: passwordController,
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
                    padding: EdgeInsets.all(0.0),
                    child: ElevatedButton(
                      onPressed: () {
                        String email = emailController.text.trim();
                        String password = passwordController.text.trim();
                        // Perform sign in with email and password
                        // You can use Getx for authentication or use FirebaseAuth
                        Get.toNamed(Routes.BOTTOMNAVBAR);
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 115.0, vertical: 12.0),
                        child: Text(
                          "Sign In",
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Not a member?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.SIGNUP);
                        },
                        child: InkWell(
                          child: Text(
                            ' Register Now',
                            style: TextStyle(
                              color: Colors.lightBlue[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Google sign in button
                      IconButton(
                        icon: 
                          SvgPicture.asset('assets/icons/google.svg'),
                        
                        onPressed: () {
                          // Perform sign in with Google
                          // You can use Getx for authentication or use third-party libraries like Firebase Auth or Google Sign In plugin
                        },
                      ),
                      // Facebook sign in button
                      IconButton(
                        icon: Icon(Icons.facebook,
                        color: Colors.blue[700],
                        size: 30,
                        ),
                        onPressed: () {
                          // Perform sign in with Facebook
                          // You can use Getx for authentication or use third-party libraries like Firebase Auth or Facebook SDK plugin
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

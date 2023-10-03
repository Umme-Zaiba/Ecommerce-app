import 'package:eapp/app/modules/categories/views/cat_screens/beauty/beauty.dart';
import 'package:flutter/material.dart';

class Beautypage extends StatefulWidget {
  const Beautypage({super.key});

  @override
  State<Beautypage> createState() => _BeautypageState();
}

class _BeautypageState extends State<Beautypage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => beauty(),
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
                        Icon(Icons.brush),
                        Text(
                          'Beauty',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                );
  }
}
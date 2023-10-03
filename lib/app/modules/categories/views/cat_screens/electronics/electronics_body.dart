import 'package:eapp/app/modules/categories/views/cat_screens/electronics/electronics.dart';
import 'package:flutter/material.dart';

class elctronicsPage extends StatefulWidget {
  const elctronicsPage({super.key});

  @override
  State<elctronicsPage> createState() => _elctronicsPageState();
}

class _elctronicsPageState extends State<elctronicsPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
            Icon(Icons.cable),
            Text(
              'Electronics',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:eapp/app/modules/categories/views/cat_screens/fashion/fashion.dart';
import 'package:flutter/material.dart';

class fashionPage extends StatefulWidget {
  const fashionPage({super.key});

  @override
  State<fashionPage> createState() => _fashionPageState();
}

class _fashionPageState extends State<fashionPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Fashion_page(),
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
            Icon(Icons.video_camera_front),
            Text(
              'Fashion',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

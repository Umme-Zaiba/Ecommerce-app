import 'package:eapp/app/modules/home/views/home_screens.dart/Homecategory/homecategory/deals/deals.dart';
import 'package:flutter/material.dart';

class DealsPage extends StatefulWidget {
  const DealsPage({super.key});

  @override
  State<DealsPage> createState() => _DealsPageState();
}

class _DealsPageState extends State<DealsPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: () {
            Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>  Deals(),
          ),
        );
          },
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  child: Container(
                    child: Icon(Icons.flash_on),
                    color: Colors.amber[50],
                    height:50,
                    width: 50,
                  ),
                ),
                Text("Flash deal"),
              ],
            ),
            
          ),          
        );
  }
}
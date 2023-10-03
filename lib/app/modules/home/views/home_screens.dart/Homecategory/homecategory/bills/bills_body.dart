import 'package:eapp/app/modules/home/views/home_screens.dart/Homecategory/homecategory/bills/bills.dart';
import 'package:flutter/material.dart';

class BillsBody extends StatefulWidget {
  const BillsBody({super.key});

  @override
  State<BillsBody> createState() => _BillsBodyState();
}

class _BillsBodyState extends State<BillsBody> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
            Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>  Bills(),
          ),
        );
          },
      child: Container(
        child: Column(
          children: [
            SizedBox(
              child: Container(
                child: Icon(Icons.receipt_long),
                color: Colors.amber[50],
                height: 50,
                width: 50,
              ),
            ),
            Text("Bills"),
          ],
        ),
      ),
    );
  }
}

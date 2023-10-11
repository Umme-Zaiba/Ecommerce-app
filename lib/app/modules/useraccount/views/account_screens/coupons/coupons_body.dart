import 'package:eapp/app/modules/useraccount/views/account_screens/coupons/coupons.dart';
import 'package:flutter/material.dart';

class Coupons extends StatefulWidget {
  const Coupons({super.key});

  @override
  State<Coupons> createState() => _CouponsState();
}

class _CouponsState extends State<Coupons> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>  coupons_view(),
          ),
        );
      },
      highlightColor: const Color.fromARGB(255, 251, 248, 237),
      child: ListTile(
        leading: Icon(Icons.local_offer,color: const Color.fromARGB(255, 239, 168, 154)),
        title: Text('Coupons', style: TextStyle(fontSize: 18),),
      ),
    );
  }
}
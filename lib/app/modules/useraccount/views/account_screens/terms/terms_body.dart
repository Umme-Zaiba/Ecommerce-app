import 'package:eapp/app/modules/useraccount/views/account_screens/terms/terms_info.dart';
// import 'package:eapp/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';

class TermsAndPolicies extends StatefulWidget {
  const TermsAndPolicies({super.key});

  @override
  State<TermsAndPolicies> createState() => _TermsAndPoliciesState();
}

class _TermsAndPoliciesState extends State<TermsAndPolicies> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const tap_info(),
          ),
        );
      },
      highlightColor: const Color.fromARGB(255, 251, 248, 237),
      child: ListTile(
        leading: Icon(Icons.description,color: const Color.fromARGB(255, 239, 168, 154)),
        title: Text('Terms and Policies', style: TextStyle(fontSize: 18),),
      ),
    );
  }
}

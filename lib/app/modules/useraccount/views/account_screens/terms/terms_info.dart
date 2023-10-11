import 'package:flutter/material.dart';

class tap_info extends StatefulWidget {
  const tap_info({super.key});

  @override
  State<tap_info> createState() => _tap_infoState();
}

class _tap_infoState extends State<tap_info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms and Policies'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'The terms and policies for our eapp, you must want to consider the following clauses:\n\n'
            '- Conditions of Use/General Conditions:\nThis clause introduces your terms and conditions agreement to your app users and customers. It explains the purpose and scope of the agreement, and informs them that by using your app, they agree to abide by your terms and conditions. You can also include a disclaimer that you reserve the right to change or update your terms and conditions at any time without prior notice.\n\n'
            '- Laying Out What\'s Prohibited:\nThis clause covers what actions and uses are forbidden on your app. For example, you can prohibit users from engaging in illegal, fraudulent, or harmful activities, violating your intellectual property rights, interfering with the security or functionality of your app, or posting any offensive or inappropriate content.\n\n'
            '- Governing Law:\nThis clause specifies the jurisdiction and laws that apply to your terms and conditions agreement. It also explains how any disputes or claims arising from or relating to your app will be resolved. For example, you can choose arbitration, mediation, or litigation as the method of dispute resolution.\n\n'
            '- Termination and Suspension of Accounts:\nThis clause explains the circumstances under which you can terminate or suspend a user\'s account or access to your app. For example, you can terminate or suspend a user\'s account if they breach your terms and conditions, fail to pay for their purchases, or engage in any misconduct or abuse. You can also state the consequences of termination or suspension, such as losing any benefits, rewards, or credits associated with their account.\n\n'
            '- Intellectual Property:\nThis clause protects your intellectual property rights over your app and its content. It states that you own or have the license to use all the trademarks, logos, designs, images, text, software, and other materials on your app. It also grants users a limited, non-exclusive, and revocable license to access and use your app for personal and non-commercial purposes only. You can also prohibit users from copying, modifying, distributing, selling, or exploiting any of your intellectual property without your prior written consent.\n\n'
            '- Payments:\nThis clause covers the payment terms and conditions for your app. It explains how users can make purchases on your app, what payment methods you accept, how you process payments, and how you handle refunds, cancellations, or disputes. You can also include any fees, taxes, or charges that apply to your transactions.\n\n'
            '- Disclaimers:\nThis clause limits your liability for any damages or losses that users may suffer from using your app. It states that you provide your app and its content on an "as is" and "as available" basis, without any warranties or guarantees of any kind. It also disclaims any responsibility for the accuracy, completeness, reliability, availability, security, or quality of your app and its content. You can also disclaim any liability for any third-party websites, services, products, or content that are linked to or from your app.',
      
            textAlign: TextAlign.justify,
            style: TextStyle(),
      
          ),
        ),
      ),
    );
  }
}
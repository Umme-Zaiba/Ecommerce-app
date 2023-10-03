import 'package:flutter/material.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final bool isLoggedIn = true; // Replace with your login logic

    // Widget content;

    // if (isLoggedIn) {
    //   content = Center(
    //     child: Text(
    //       'NotificationView is working for user!',
    //       style: TextStyle(fontSize: 20),
    //     ),
    //   );
    // // ignore: dead_code
    // } else {
      // content = Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       // Handle login logic here
      //     },
      //     child: const Text('Login'),
      //   ),
      // );
    // }
      return Scaffold(
        appBar: AppBar(
          title: Text('Notifications'),
        ),
        body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                leading: Icon(
                  Icons.local_offer,
                  color: Colors.amber,
                ),
                title: Text('Earn great deals by shopping this September!'),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                leading: Icon(
                  Icons.local_offer,
                  color: Colors.amber,
                ),
                title: Text('Tap to recieve your coins to get discounts and more!'),
              ),
            ),
            
          ],
        ),
      ),
      );
   
  }
}

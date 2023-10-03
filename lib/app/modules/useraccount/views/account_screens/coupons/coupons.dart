import 'package:flutter/material.dart';


class coupons_view extends StatefulWidget {
  // const coupons_view({Key key}) : super(key: key);

  @override
  State<coupons_view> createState() => _coupons_viewState();
}

class _coupons_viewState extends State<coupons_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coupons'),
      ),
      body: Padding(
        padding: EdgeInsets.all(35.0),
        child: Column(          
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Coupons',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),

                // Add coupon
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Add Your Coupon here'),
                          content: TextField(
                           decoration: InputDecoration(
                            hintText: 'Enter coupon code here',
                            
                           ),
                          ),
                          actions: <Widget>[
                            ElevatedButton(
                              child: const Text('OK'),
                              
                              onPressed: () {
                                Navigator.of(context).pop(true);
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                   
                  child: Text(
                    'Add Coupon',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 224, 173, 85)
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25,),
            Center(
              child: Text(
                'Try to add coupons to apply',
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

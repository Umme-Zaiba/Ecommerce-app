import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  String newName = '';
  String newPhone = '';
  String newEmail = '';
  String newAddress = '';
  bool confirmChanges = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Your Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Change Profile Information',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'Name',
              ),
              onChanged: (value) {
                setState(() {
                  newName = value;
                });
              },
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'Phone',
              ),
              onChanged: (value) {
                setState(() {
                  newPhone = value;
                });
              },
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
              onChanged: (value) {
                setState(() {
                  newEmail = value;
                });
              },
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'Address',
              ),
              onChanged: (value) {
                setState(() {
                  newAddress = value;
                });
              },
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Checkbox(
                  value: confirmChanges,
                  onChanged: (value) {
                    setState(() {
                      confirmChanges = value!;
                    });
                  },
                ),
                Text('Confirm changes'),
              ],
            ),
            SizedBox(height: 16),
             Center(
               child: Container(
                  width: 220,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.pop(context);
                      showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          // title: Text('Add Your Coupon here'),
                          content: Text('Saved changes to your profile'),
                          
                          actions: <Widget>[
                            ElevatedButton(
                              child: const Text('OK'),
                              onPressed: () {
                                Navigator.of(context).pop(true);
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        );
                      },
                    );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        "Save Changes",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 18,
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.cyan[100],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 10,
                    ),
                  ),
                ),
             ),
          ],
        ),
      ),
    );
  }
}

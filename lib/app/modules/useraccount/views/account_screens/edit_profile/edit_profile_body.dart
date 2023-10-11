import 'package:eapp/app/modules/useraccount/views/account_screens/edit_profile/edit_profile.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EditProfilePage(),
          ),
        );
      },
      highlightColor: const Color.fromARGB(255, 251, 248, 237),
      child: ListTile(
        leading: Icon(Icons.person, color: const Color.fromARGB(255, 239, 168, 154)),
        title: Text('Edit Profile',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

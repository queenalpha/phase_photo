import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key});

  @override
  State<ProfilePage> createState() => _Profile();
}

class _Profile extends State<ProfilePage> {
  final currentUser = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'Profile Page of ${currentUser!.displayName}',
        style: TextStyle(
          color: Colors.black,
        ),
      )),
    );
  }
}

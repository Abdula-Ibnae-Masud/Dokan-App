import 'package:flutter/material.dart';

import '../Components/profile_body_part.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Account"),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: const SingleChildScrollView(child: ProfileBodyPart()),
    );
  }
}

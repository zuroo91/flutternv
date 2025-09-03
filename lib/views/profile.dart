import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.blueGrey,
      ),
      body: const Center(
        child:Text('Ini Halaman profile',
        style: TextStyle(fontSize: 30),
        ) ,
        ),
    );
  }
}
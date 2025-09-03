import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
        backgroundColor: Colors.blueGrey,
      ),
      body: const Center(
        child:Text('Ini Halaman Setting',
        style: TextStyle(fontSize: 30),
        ) ,
        ),
    );
  }
}
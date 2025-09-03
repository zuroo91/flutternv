import 'package:flutter/material.dart';

import 'package:flutter_navigation/widgets/bottom_navbar.dart';
import './pages/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage (),
    );
  }
}

class Counter extends StatefulWidget {
  const Counter ({super.key});

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter>{
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$_counter',
              style: const TextStyle(fontSize: 40),
            ),
            const SizedBox(height: 20),
            ElevatedButton (
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                foregroundColor: Colors.white,
              ),
              onPressed: (){
                setState((){
                  _counter++;
                });
              },
              child: const Text('Tambah'),
            ),
          ],
        ),
      ),
      );
  }
}
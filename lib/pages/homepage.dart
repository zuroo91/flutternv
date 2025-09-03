import 'package:flutter/material.dart';
import '../widgets/date_container.dart';
import '../widgets/healt_container.dart';

class HomePage extends StatelessWidget {
  final String username;
  const HomePage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  username.isEmpty ? 'Hello, John Doe' : 'Hello, $username',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),
              const SizedBox(height: 5),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'ini saya mengerjakan tugas flutter navigation, membuat tampilan halaman home page',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: const Icon(Icons.search),
                  contentPadding: const EdgeInsets.symmetric(vertical: 15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.black, width: 1.5),
                  )
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DateContainer(day: 'Mon', date: '21', isActive: false),
                  DateContainer(day: 'Tue', date: '22', isActive: true),
                  DateContainer(day: 'Wed', date: '23', isActive: false),
                  DateContainer(day: 'Thu', date: '24', isActive: false),
                  DateContainer(day: 'Fri', date: '25', isActive: false),
                ],
                ),
                const SizedBox(height: 15),
                Divider(
                  thickness: 1,
                  color: Colors.grey[300],
                ),
                const SizedBox(height: 15),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HealthCard(
                      icon: Icons.favorite, 
                      label:'Heart Rate',
                      value:'78', 
                      unit:'bpm', 
                      iconColor: Color.fromRGBO(210, 65, 110, 1.0), 
                      backgrroundColor: Color.fromRGBO(210, 65, 110, 0.1),
                    ),
                    SizedBox(width: 30),
                    HealthCard(
                      icon: Icons.flash_on, 
                      label: 'Exercise', 
                      value: '24', 
                      unit: 'min', 
                      iconColor: Color.fromRGBO(112, 66, 201, 1.0), 
                      backgrroundColor: Color.fromRGBO(112, 66, 201, 0.1),
                      ),
                  ],
                ),
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HealthCard(
                      icon: Icons.directions_walk, 
                      label:'Walking', 
                      value: '10', 
                      unit: 'km', 
                      iconColor: Color.fromRGBO(13, 177, 173, 1.0), 
                      backgrroundColor: Color.fromRGBO(13, 177, 173, 0.1),
                      ),
                      SizedBox(width: 30),
                      HealthCard(
                        icon: Icons.nightlight_round, 
                        label: 'Sleep', 
                        value: '8', 
                        unit: 'hrs', 
                        iconColor: Color.fromRGBO(25, 123, 210, 1.0), 
                        backgrroundColor: Color.fromRGBO(25, 123, 210, 0.1), )
                  ],
                ),
            ]
          ),
          ),
      )
    );
  }
}
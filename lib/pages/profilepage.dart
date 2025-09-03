import 'package:flutter/material.dart';

import '../widgets/drawer.dart';
import '../widgets/healt_container.dart';

class ProfilePage extends StatelessWidget {
  final String username, email;
  const ProfilePage({super.key, required this.username, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(135, 173, 255, 1),
        iconTheme: 
        const IconThemeData(
          color: Colors.white,
        ),
      ),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 260,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(135, 173, 255, 1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    username.isEmpty ? 'John Doe' : username,
                    style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                   Text(
                    email.isEmpty ?'johndoe@gmail.com' : email,
                    style: const TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.infinity,
                height: 140,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(210, 65, 110, 0.1),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.favorite,
                        color: Color(0xFFD2416E), size: 80),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Heart rate',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFD2416E),
                          ),
                        ),
                        SizedBox(height: 4),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '97',
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFD2416E),
                              ),
                            ),
                            SizedBox(width: 4),
                            Text(
                              'bpm',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFFD2416E),
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HealthCard(
                    icon: Icons.bloodtype,
                    label: 'Blood Group',
                    value: 'A+',
                    iconColor: Color.fromRGBO(156, 74, 107, 1.0),
                    backgrroundColor: Color.fromRGBO(178, 116, 140, 0.42),
                  ),
                  HealthCard(
                    icon: Icons.fitness_center,
                    label: 'Weight',
                    value: '103lbs',
                    iconColor: Color.fromRGBO(211, 168, 90, 1.0),
                    backgrroundColor: Color.fromRGBO(210, 180, 125, 0.39),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

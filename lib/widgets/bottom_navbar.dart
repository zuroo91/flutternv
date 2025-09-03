import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../pages/homepage.dart';
import '../pages/profilepage.dart';

class MyBottomNavbar extends StatefulWidget {
  final String username, email;
  const MyBottomNavbar({super.key, required this.username, required this.email});

  @override
  State<MyBottomNavbar> createState() => _MyBottomNavbarState();
}

class _MyBottomNavbarState extends State<MyBottomNavbar> {
  int _selectedIndex = 0;
  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      HomePage(username: widget.username),
      ProfilePage(username: widget.username, email: widget.email),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(0.1))
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: GNav(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            rippleColor: Colors.grey[300]!,
            hoverColor: Colors.grey[100]!,
            gap: 8,
            activeColor: const Color.fromRGBO(135, 173, 255, 1),
            iconSize: 24,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: const Duration(milliseconds: 300),
            tabBackgroundColor: const Color.fromRGBO(135, 173, 255, 0.1),
            color: Colors.grey,
            tabs: const [
              GButton(
                icon: Icons.home,
               text: 'Home',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
                ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            ),
          ),
        ),
    );

  }
}

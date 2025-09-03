import 'package:flutter/material.dart';

import '../pages/loginpage.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:  ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromRGBO(135, 173, 255, 1)
            ),
            child: Text(
              'Menu Navigasi',
              style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Logout'),
                onTap: () {
                  Navigator.pushReplacement(context, 
                  MaterialPageRoute(builder: (context) => LoginPage()));
                },
              )
        ],
      ),
    );
  }
}
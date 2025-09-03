import 'package:flutter/material.dart';
import 'package:flutter_navigation/widgets/bottom_navbar.dart';

class LoginPage extends  StatelessWidget {
   LoginPage({super.key});
  final TextEditingController _controllerUsername = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              const Text('Sign In',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: _controllerUsername,
                decoration: InputDecoration(
                  hintText: 'Username' ,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 15.0
                  ),
                ),
              ),
              const SizedBox(height: 15),
              TextFormField(
                controller: _controllerEmail,
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 15.0
                  ),
                ),
              ),
              const SizedBox(height: 15),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 15.0
                  )
                ),
              ),
              const SizedBox(height: 15),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(color: Color(0xFF0000FF)),
                  ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => MyBottomNavbar(
                        username: _controllerUsername.text, 
                        email: _controllerEmail.text)));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF87ADFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  elevation: 4,
                ),
                child: const Center(
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    ),
                )),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey[300],
                        ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text('OR'),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            color: Colors.grey[300],
                            ),
                            ),
                  ],
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: (){},
                    icon: Image.asset('assets/icons/google_icon.png',
                    height: 24,
                    width: 24,
                    ),
                  label: const Text('Login with Google',
                  style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 3,
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  ),
                )
            ],
          ),
          ),
      ),
    );
  }
}
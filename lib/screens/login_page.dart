import 'package:flutter/material.dart';
import 'package:skinsquid/screens/user_details_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Email or Phone',
                prefixIcon: Icon(Icons.email, color: const Color.fromARGB(209, 225, 185, 51)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock, color: Color.fromARGB(209, 225, 185, 51)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserDetailsPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(209, 225, 185, 51),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                'Login',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Navigate to sign-up page (not implemented here)
              },
              child: Text(
                'Create Account',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(209, 225, 185, 51),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text("Or login with"),
            SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {
                // Google login logic (not implemented here)
              },
              icon: Icon(Icons.g_mobiledata, size: 30),
              label: Text("Google"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Color.fromARGB(209, 225, 185, 51),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
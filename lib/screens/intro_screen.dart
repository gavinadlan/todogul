import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Image.asset(
              'img/TODOGUL2.png', // Pastikan path dan nama file sesuai
              height: 150,
            ),
            SizedBox(height: 20),
            // Text TodoGul
            Text(
              "TODOGUL",
              style: TextStyle(
                color: Color(0xFF8875FF),
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40),
            // Get Started Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF8875FF),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/onboarding');
              },
              child: Text("Get Started"),
            ),
          ],
        ),
      ),
    );
  }
}

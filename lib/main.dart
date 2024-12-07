import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/onboarding_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: OnboardingScreen(), // Ganti dengan LoginScreen() jika ingin memulai dengan login
  ));
}

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView(
        children: [
          _buildPage(
              "Manage your tasks", "img/intro1.png", "Prioritize tasks easily"),
          _buildPage(
              "Create daily routine", "img/intro2.png", "Stay productive every day"),
          _buildPage(
              "Organize your tasks", "img/intro3.png", "Achieve your goals faster"),
        ],
      ),
    );
  }

  Widget _buildPage(String title, String image, String description) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, height: 300),
          SizedBox(height: 20),
          Text(title, style: TextStyle(color: Colors.white, fontSize: 24)),
          SizedBox(height: 10),
          Text(description,
              style: TextStyle(color: Colors.grey, fontSize: 16),
              textAlign: TextAlign.center),
        ],
      ),
    );
  }
}

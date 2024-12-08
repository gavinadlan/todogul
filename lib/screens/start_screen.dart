import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Title and Description Centered
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center, // Ensure text alignment is centered
              children: [
                Text(
                  "Welcome to TodoGul",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center, // Center the text
                ),
                SizedBox(height: 10),
                Text(
                  "Please login to your account or create new account to continue",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center, // Center the text
                ),
              ],
            ),
          ),
          // Buttons
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF8875FF),
                    minimumSize: Size(300, 50),
                  ),
                  onPressed: () {
                    // Navigate to Login Screen
                  },
                  child: Text(
                    "LOGIN",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 20),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Color(0xFF8875FF)),
                    minimumSize: Size(300, 50),
                  ),
                  onPressed: () {
                    // Navigate to Create Account Screen
                  },
                  child: Text(
                    "CREATE ACCOUNT",
                    style: TextStyle(color: Color(0xFF8875FF)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

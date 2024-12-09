import 'package:flutter/material.dart';
import 'onboarding_screen.dart'; 
import 'login_screen.dart'; 
import 'register_screen.dart'; 

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, 
      body: Stack(
        children: [
          // Tombol Back di bagian atas
          Positioned(
            top: 40,
            left: 16,
            child: GestureDetector(
              onTap: () {
                // Kembali ke OnboardingScreen
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => OnboardingScreen()),
                );
              },
              child: Image.asset(
                'img/back_icon.png',
                width: 24,
                height: 24,
              ),
            ),
          ),
          // Konten utama
          Positioned(
            top: 100, // Geser lebih ke atas
            left: 16,
            right: 16,
            child: Column(
              children: [
                Text(
                  'Welcome to TodoGul',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF8875FF), // Warna ungu
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  'Please login to your account or create new account to continue',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white, // Warna teks putih
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          // Tombol di bagian bawah
          Positioned(
            bottom: 40,
            left: 16,
            right: 16,
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Navigasi ke LoginScreen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF8875FF), // Warna ungu
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white, // Warna teks putih
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                OutlinedButton(
                  onPressed: () {
                    // Navigasi ke RegisterScreen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterScreen()),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Color(0xFF8875FF)), // Outline ungu
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                          color: Color(0xFF8875FF), // Warna teks ungu
                        ),
                      ),
                    ),
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

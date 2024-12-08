import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Tombol Back
            GestureDetector(
              onTap: () {
                Navigator.pop(context); // Kembali ke layar sebelumnya
              },
              child: Image.asset(
                'img/back_icon.png',
                width: 24,
                height: 24,
              ),
            ),
            SizedBox(height: 30), // Tambahkan jarak lebih besar
            // Judul Login
            Text(
              'Login',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 40), // Tambahkan jarak lebih besar
            // Field Username
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF8875FF)),
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 30), // Tambahkan jarak lebih besar
            // Field Password
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF8875FF)),
                ),
              ),
              obscureText: true,
              style: TextStyle(color: Colors.white),
            ),
            Spacer(),
            // Tombol Login
            ElevatedButton(
              onPressed: () {
                // Aksi tombol Login
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF8875FF),
              ),
              child: SizedBox(
                width: double.infinity,
                child: Center(
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Garis dengan tulisan "or"
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.white24,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'or',
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.white24,
                    thickness: 1,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Tombol Login dengan Google
            OutlinedButton(
              onPressed: () {
                // Aksi Login dengan Google
              },
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Color(0xFF8875FF)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'img/google_icon.png',
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Login with Google',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            // Tombol Login dengan Apple
            OutlinedButton(
              onPressed: () {
                // Aksi Login dengan Apple
              },
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Color(0xFF8875FF)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'img/apple_icon.png',
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Login with Apple',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Footer
            Center(
              child: Text(
                "Don't have an account? Register",
                style: TextStyle(color: Colors.white70),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

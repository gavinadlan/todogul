import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Background hitam
      appBar: AppBar(
        backgroundColor: Colors.black, // Background AppBar hitam
        elevation: 0, // Hilangkan bayangan
        title: Text(
          'Index',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            // Tambahkan aksi untuk tombol menu
          },
        ),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage('img/jerison.jpeg'), // Gambar profil
            radius: 16,
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'img/empaty_tasks.png',
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20),
            Text(
              'What do you want to do today?',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Tap + to add your tasks',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Aksi ketika tombol + ditekan
        },
        backgroundColor: Color(0xFF8687E7), // Warna ungu
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}

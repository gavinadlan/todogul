import 'package:flutter/material.dart';
import 'package:todogul/screens/edit_profile_screen.dart';
import 'package:todogul/screens/settings_screen.dart';
import 'package:todogul/screens/login_screen.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Agus Setiawan',
              style: TextStyle(color: Colors.white),
            ),
            accountEmail: Text(
              'a.stwn03@gmail.com',
              style: TextStyle(color: Colors.white70),
            ),
            currentAccountPicture: ClipOval(
              child: Image.asset('img/jerison.jpeg', width: 50, height: 50),
            ),
            decoration: BoxDecoration(color: Colors.black),
          ),

          // Edit Profile
          ListTile(
            leading: Icon(Icons.edit, color: Colors.white),
            title: Text(
              'Edit Profile',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditProfileScreen()),
              );
            },
          ),
          Divider(color: Colors.white24, thickness: 0.5), // Garis tipis

          // Settings
          ListTile(
            leading: Icon(Icons.settings, color: Colors.white),
            title: Text(
              'Settings',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsScreen()),
              );
            },
          ),
          Divider(color: Colors.white24, thickness: 0.5), // Garis tipis

          // Mengurangi jarak Spacer untuk menaikkan tombol Log Out
          Spacer(flex: 1), // Mengurangi ruang kosong agar tombol lebih naik

          // Tombol Log Out tanpa border
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 12.0, vertical: 4), // Padding disesuaikan
            child: ListTile(
              leading: Icon(Icons.logout, color: Colors.redAccent),
              title: Text(
                'Log Out',
                style: TextStyle(color: Colors.redAccent),
              ),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    backgroundColor: Colors.grey[900],
                    title: Text(
                      'Konfirmasi',
                      style: TextStyle(color: Colors.white),
                    ),
                    content: Text(
                      'Apakah Anda yakin ingin keluar?',
                      style: TextStyle(color: Colors.white70),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text('Batal',
                            style: TextStyle(color: Colors.white)),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()),
                            (route) => false,
                          );
                        },
                        child: Text('Keluar',
                            style: TextStyle(color: Colors.redAccent)),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

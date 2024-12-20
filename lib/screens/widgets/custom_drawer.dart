import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
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
          ListTile(
            leading: Icon(Icons.edit, color: Colors.white),
            title: Text(
              'Edit Profile',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.white),
            title: Text(
              'Settings',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.logout, color: Colors.white),
            title: Text(
              'Log Out',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

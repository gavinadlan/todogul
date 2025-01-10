import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  TextEditingController _usernameController = TextEditingController();
  bool _isEditingImage = false;
  String _profileImage = ''; // Placeholder for the profile image

  void _saveChanges() {
    // Logic to save changes can go here
    print('Username: ${_usernameController.text}');
    // You can add logic to save the profile image here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Profile',
          style: TextStyle(color: Colors.white), // Change text color to white
        ),
        backgroundColor:
            Colors.black.withOpacity(0.8), // Slightly lighter black
      ),
      backgroundColor: Colors.black, // Background color of the screen
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _isEditingImage =
                      !_isEditingImage; // Toggle image editing state
                });
              },
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey[700],
                backgroundImage: _profileImage.isNotEmpty
                    ? NetworkImage(
                        _profileImage) // If a profile image exists, display it
                    : null,
                child: _profileImage.isEmpty
                    ? Icon(Icons.add_a_photo,
                        color: Colors.white) // Show placeholder icon
                    : null,
              ),
            ),
            if (_isEditingImage)
              Column(
                children: [
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Logic for uploading or choosing an image goes here
                      print('Open image picker');
                    },
                    child: Text('Pilih Foto'),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _isEditingImage = false; // Close image editing mode
                      });
                    },
                    child: Text('Tutup'),
                  ),
                ],
              ),
            SizedBox(height: 30),
            TextField(
              controller: _usernameController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(color: Colors.white70),
                filled: true,
                fillColor: Colors.grey[800],
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: _saveChanges,
              child: Text(
                'Simpan',
                style: TextStyle(
                    color: Colors.white), // White text color for the button
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent, // Red button color
              ),
            ),
          ],
        ),
      ),
    );
  }
}

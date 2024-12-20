import 'package:flutter/material.dart';
import 'widgets/create_task_bottom_sheet.dart';
import 'widgets/custom_drawer.dart';
import 'widgets/custom_text_field.dart';
import 'widgets/custom_dropdown.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: false,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Image.asset(
              'img/TODOGUL2.png',
              width: 40,
              height: 40,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: CustomTextField(hintText: 'Search tasks...'),
          ),
          SizedBox(height: 20),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Image.asset(
                'img/empaty_tasks.png',
                width: 200,
                height: 200,
              ),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Text(
              'What do you want to do today?',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: Text(
              'Tap + to add your tasks',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white70,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            builder: (context) {
              return CreateTaskBottomSheet();
            },
          );
        },
        backgroundColor: Color(0xFF8687E7),
        child: Icon(Icons.add, color: Colors.white),
      ),
      drawer: CustomDrawer(),
    );
  }
}

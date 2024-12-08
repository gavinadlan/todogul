import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView(
        controller: _controller,
        children: [
          _buildPage(
            context,
            "Manage your tasks",
            "img/intro1.png",
            "You can easily manage all of your daily tasks in DoMe for free",
            isLastPage: false,
          ),
          _buildPage(
            context,
            "Create daily routine",
            "img/intro2.png",
            "In Uptodo you can create your personalized routine to stay productive",
            isLastPage: false,
          ),
          _buildPage(
            context,
            "Organize your tasks",
            "img/intro3.png",
            "You can organize your daily tasks by adding your tasks into separate categories",
            isLastPage: true,
          ),
        ],
      ),
    );
  }

  Widget _buildPage(BuildContext context, String title, String image,
      String description, {required bool isLastPage}) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(image, height: 300),
              SizedBox(height: 20),
              Text(title,
                  style: TextStyle(color: Colors.white, fontSize: 24)),
              SizedBox(height: 10),
              Text(description,
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                  textAlign: TextAlign.center),
            ],
          ),
        ),
        // Skip Button
        Positioned(
          top: 40,
          left: 16,
          child: TextButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/start');
            },
            child: Text(
              "SKIP",
              style: TextStyle(
                color: Colors.white.withOpacity(0.44),
                fontSize: 16,
              ),
            ),
          ),
        ),
        // Back Button
        if (!isLastPage)
          Positioned(
            bottom: 20,
            left: 16,
            child: TextButton(
              onPressed: () {
                _controller.previousPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.ease,
                );
              },
              child: Text(
                "BACK",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.44),
                  fontSize: 16,
                ),
              ),
            ),
          ),
        // Next or Get Started Button
        Positioned(
          bottom: 20,
          right: 16,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF8875FF),
            ),
            onPressed: () {
              if (isLastPage) {
                Navigator.pushReplacementNamed(context, '/start');
              } else {
                _controller.nextPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.ease,
                );
              }
            },
            child: Text(
              isLastPage ? "GET STARTED" : "NEXT",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}

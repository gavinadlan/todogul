import 'package:flutter/material.dart';
import 'screens/intro_screen.dart';
import 'screens/onboarding_screen.dart';
import 'screens/start_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => IntroScreen(),
        '/onboarding': (context) => OnboardingScreen(),
        '/start': (context) => StartScreen(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'features/ondoarding/views/pages/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF13141C),
        appBarTheme: AppBarTheme(color: const Color(0xFF13141C),)
      ),
      home: const FakeSplashScreen(),
    );
  }
}

class FakeSplashScreen extends StatefulWidget {
  const FakeSplashScreen({super.key});

  @override
  State<FakeSplashScreen> createState() => _FakeSplashScreenState();
}

class _FakeSplashScreenState extends State<FakeSplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToOnboarding();
  }

  void _navigateToOnboarding() async {
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF13141C),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/splash_logo.png', 
              width: 160,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}

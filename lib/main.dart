import 'package:banking_app/features/navigation_layout/views/pages/nav_page.dart';
import 'package:banking_app/features/navigation_layout/views/pages/navigation_bar_page.dart';
import 'package:banking_app/features/onboarding/views/pages/onboarding_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
      ).copyWith(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0F1017),
      ),
      home: NavigationBarPage(),
    );
  }
}
//hjashdkjsahdkjsahdksakjd

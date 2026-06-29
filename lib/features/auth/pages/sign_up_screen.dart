import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sign Up")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const TextField(decoration: InputDecoration(labelText: "Full Name")),
            const TextField(decoration: InputDecoration(labelText: "Phone Number")),
            const TextField(decoration: InputDecoration(labelText: "Email Address")),
            const TextField(
              decoration: InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Sign Up"),
            ),
          ],
        ),
      ),
    );
  }
}
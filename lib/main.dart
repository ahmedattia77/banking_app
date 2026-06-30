import 'package:flutter/material.dart';
import 'features/Transaction_History_screen/views/transaction_history_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Banking App',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const TransactionHistoryScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}






import 'package:flutter/material.dart';

class MonthlySpendingText extends StatelessWidget {
  const MonthlySpendingText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("Monthly spending limit"
    ,style: TextStyle(
      fontSize: 18 ,
      fontWeight: FontWeight.w500
    ),
    );
  }
}
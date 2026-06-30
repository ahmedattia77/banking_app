import 'package:flutter/material.dart';

class TransactionItem {
  final String name;
  final String category;
  final String amount;
  final bool isNegative;
  final Color circleColor;
  final Color iconColor;
  final String iconPath;

  const TransactionItem({
    required this.name,
    required this.category,
    required this.amount,
    required this.isNegative,
    required this.circleColor,
    required this.iconColor,
    required this.iconPath,
  });
}

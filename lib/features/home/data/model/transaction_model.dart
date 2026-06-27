import 'package:flutter/material.dart';

class TransactionModel {
  final String title;
  final String category;
  final String amount;
  final IconData icon;
  final Color iconColor;
  final Color iconBgColor;
  final Color amountColor;

  TransactionModel({
    required this.title,
    required this.category,
    required this.amount,
    required this.icon,
    required this.iconColor,
    required this.iconBgColor,
    required this.amountColor,
  });
}

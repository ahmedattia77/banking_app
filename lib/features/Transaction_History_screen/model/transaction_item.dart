import 'package:flutter/material.dart';

enum TransactionType { expense, income }

class TransactionItem {
  final String title;
  final String subtitle;
  final double amount;
  final TransactionType type;
  final String imagePath;

  const TransactionItem({
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.type,
    required this.imagePath,
  });

  String get formattedAmount {
    final sign = type == TransactionType.expense ? '- ' : '+ ';
    return '$sign\$${amount.toStringAsFixed(2)}';
  }
}

List<TransactionItem> dummyTransactions = [
  TransactionItem(
    title: 'Apple Store',
    subtitle: 'Entertainment',
    amount: 5.99,
    type: TransactionType.expense,
    imagePath: 'assets/svgs/search1.svg',
  ),
  TransactionItem(
    title: 'Spotify',
    subtitle: 'Music',
    amount: 12.99,
    type: TransactionType.expense,
    imagePath: 'assets/images/spotify.png', // استخدم صورة PNG
  ),
  TransactionItem(
    title: 'Money Transfer',
    subtitle: 'Transaction',
    amount: 300,
    type: TransactionType.income,
    imagePath: 'assets/svgs/search3.svg',
  ),
  TransactionItem(
    title: 'Grocery',
    subtitle: 'Shopping',
    amount: 88,
    type: TransactionType.expense,
    imagePath: 'assets/svgs/search4.svg',
  ),
  TransactionItem(
    title: 'Apple Store',
    subtitle: 'Entertainment',
    amount: 5.99,
    type: TransactionType.expense,
    imagePath: 'assets/images/netfilx.png',
  ),
  TransactionItem(
    title: 'Spotify',
    subtitle: 'Music',
    amount: 12.99,
    type: TransactionType.expense,
    imagePath: 'assets/images/spotify.png',
  ),
  TransactionItem(
    title: 'Money Transfer',
    subtitle: 'Transaction',
    amount: 300,
    type: TransactionType.income,
    imagePath: 'assets/svgs/search3.svg',
  ),
  TransactionItem(
    title: 'Spotify',
    subtitle: 'Music',
    amount: 12.99,
    type: TransactionType.expense,
    imagePath: 'assets/images/spotify.png',
  ),
  TransactionItem(
    title: 'Grocery',
    subtitle: 'Shopping',
    amount: 88,
    type: TransactionType.expense,
    imagePath: 'assets/svgs/search4.svg',
  ),
];

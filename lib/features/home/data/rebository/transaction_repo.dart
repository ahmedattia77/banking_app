

import 'package:banking_app/features/home/data/model/transaction_model.dart';
import 'package:flutter/material.dart';

class TransactionRepo {
  List<TransactionModel> getTransactionsData ()=> [
    TransactionModel(
      title: 'Apple Store',
      category: 'Entertainment',
      amount: '- \$5,99',
      icon: Icons.apple,
      iconColor: Colors.white,
      iconBgColor: const Color(0xFF1E1E2E),
      amountColor: Colors.white,
    ),
    TransactionModel(
      title: 'Spotify',
      category: 'Music',
      amount: '- \$12,99',
      icon: Icons.audiotrack,
      iconColor: const Color(0xFF1ED760),
      iconBgColor: const Color(0xFF1E1E2E),
      amountColor: Colors.white,
    ),
    TransactionModel(
      title: 'Money Transfer',
      category: 'Transaction',
      amount: '\$300',
      icon: Icons.download_rounded,
      iconColor: Colors.white,
      iconBgColor: const Color(0xFF1E1E2E),
      amountColor: const Color(0xFF007AFF),
    ),
    TransactionModel(
      title: 'Grocery',
      category: 'Shopping',
      amount: '- \$ 88',
      icon: Icons.shopping_cart_outlined,
      iconColor: const Color(0xFFFF453A),
      iconBgColor: const Color(0xFF1E1E2E),
      amountColor: Colors.white,
    ),
  ];
}
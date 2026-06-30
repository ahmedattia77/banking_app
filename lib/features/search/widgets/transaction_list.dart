import 'package:flutter/material.dart';
import '../models/transaction_item.dart';
import 'transaction_tile.dart';

class TransactionList extends StatelessWidget {
  final List<TransactionItem> items;

  const TransactionList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      itemCount: items.length,
      separatorBuilder: (_, __) =>
          Divider(color: Colors.grey.shade200, height: 1),
      itemBuilder: (_, index) => TransactionTile(item: items[index]),
    );
  }
}

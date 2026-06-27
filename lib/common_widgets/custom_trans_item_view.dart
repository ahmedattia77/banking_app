import 'package:banking_app/features/home/data/model/transaction_model.dart';
import 'package:flutter/material.dart';

class CustomTransItemView extends StatelessWidget {
  final TransactionModel item;
  const CustomTransItemView({super.key , required this.item});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 52,
          height: 52,
          decoration: BoxDecoration(
            color: item.iconBgColor,
            shape: BoxShape.circle,
          ),
          child: Icon(item.icon, color: item.iconColor, size: 24),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                item.category,
                style: const TextStyle(color: Colors.grey, fontSize: 13),
              ),
            ],
          ),
        ),
        Text(
          item.amount,
          style: TextStyle(
            color: item.amountColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
    ;
  }
}

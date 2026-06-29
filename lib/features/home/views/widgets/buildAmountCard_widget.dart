import 'package:banking_app/common_widgets/colors.dart';
import 'package:flutter/material.dart';

class AmountCard extends StatelessWidget {
  final TextEditingController amountController;
  final String currency;
  final VoidCallback? onChangeCurrency;

  const AmountCard({
    super.key,
    required this.amountController,
    required this.currency,
    this.onChangeCurrency,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Enter Your Amount',
                style: TextStyle(color: AppColors.labelColor, fontSize: 13),
              ),
              GestureDetector(
                onTap: onChangeCurrency,
                child: const Text(
                  'Change Currency?',
                  style: TextStyle(color: AppColors.redAccent, fontSize: 13),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Text(
                currency,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: TextField(
                  controller: amountController,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    isDense: true,
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

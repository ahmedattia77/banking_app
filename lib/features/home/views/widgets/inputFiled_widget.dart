import 'package:banking_app/common_widgets/colors.dart';
import 'package:flutter/material.dart';

class LabeledInputField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final IconData icon;
  final TextInputType? keyboardType;

  const LabeledInputField({
    super.key,
    required this.label,
    required this.controller,
    required this.icon,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(color: AppColors.labelColor, fontSize: 13),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Icon(icon, color: AppColors.labelColor, size: 18),
            const SizedBox(width: 8),
            Expanded(
              child: TextField(
                controller: controller,
                keyboardType: keyboardType,
                style: const TextStyle(color: Colors.white, fontSize: 15),
                decoration: const InputDecoration(
                  isDense: true,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.zero,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Container(height: 1, color: AppColors.borderColor),
      ],
    );
  }
}

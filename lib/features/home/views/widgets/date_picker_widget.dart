import 'package:banking_app/common_widgets/colors.dart';
import 'package:flutter/material.dart';

class DatePickerRow extends StatelessWidget {
  final int day;
  final int month;
  final int year;
  final VoidCallback? onDayTap;
  final VoidCallback? onMonthTap;
  final VoidCallback? onYearTap;

  const DatePickerRow({
    super.key,
    required this.day,
    required this.month,
    required this.year,
    this.onDayTap,
    this.onMonthTap,
    this.onYearTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _DatePickerBox(
            value: day.toString().padLeft(2, '0'),
            onTap: onDayTap,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _DatePickerBox(
            value: month.toString().padLeft(2, '0'),
            onTap: onMonthTap,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _DatePickerBox(value: year.toString(), onTap: onYearTap),
        ),
      ],
    );
  }
}

class _DatePickerBox extends StatelessWidget {
  final String value;
  final VoidCallback? onTap;

  const _DatePickerBox({required this.value, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: AppColors.borderColor)),
        ),
        child: Text(
          value,
          style: const TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
    );
  }
}

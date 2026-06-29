import 'package:flutter/material.dart';

class BirthDatePicker extends StatefulWidget {
  final Function(int day, String month, int year) onDateChanged;

  const BirthDatePicker({super.key, required this.onDateChanged});

  @override
  State<BirthDatePicker> createState() => _BirthDatePickerState();
}

class _BirthDatePickerState extends State<BirthDatePicker> {
  int selectedDay = 28;
  String selectedMonth = 'September';
  int selectedYear = 2000;

  final List<int> days = List.generate(31, (i) => i + 1);
  final List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];
  final List<int> years = List.generate(100, (i) => 2024 - i);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Birth Date',
          style: TextStyle(color: Colors.grey, fontSize: 13),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            // Day
            Expanded(
              child: DropdownButtonHideUnderline(
                child: DropdownButton<int>(
                  value: selectedDay,
                  isExpanded: true,
                  dropdownColor: Colors.white,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                  items: days
                      .map((d) => DropdownMenuItem(value: d, child: Text('$d')))
                      .toList(),
                  onChanged: (v) {
                    setState(() {
                      selectedDay = v!;
                      widget.onDateChanged(
                        selectedDay,
                        selectedMonth,
                        selectedYear,
                      );
                    });
                  },
                ),
              ),
            ),
            // Month
            Expanded(
              flex: 2,
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: selectedMonth,
                  isExpanded: true,
                  dropdownColor: Colors.white,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                  items: months
                      .map((m) => DropdownMenuItem(value: m, child: Text(m)))
                      .toList(),
                  onChanged: (v) {
                    setState(() {
                      selectedMonth = v!;
                      widget.onDateChanged(
                        selectedDay,
                        selectedMonth,
                        selectedYear,
                      );
                    });
                  },
                ),
              ),
            ),
            // Year
            Expanded(
              child: DropdownButtonHideUnderline(
                child: DropdownButton<int>(
                  value: selectedYear,
                  isExpanded: true,
                  dropdownColor: Colors.white,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                  items: years
                      .map((y) => DropdownMenuItem(value: y, child: Text('$y')))
                      .toList(),
                  onChanged: (v) {
                    setState(() {
                      selectedYear = v!;
                      widget.onDateChanged(
                        selectedDay,
                        selectedMonth,
                        selectedYear,
                      );
                    });
                  },
                ),
              ),
            ),
          ],
        ),
        const Divider(height: 20),
      ],
    );
  }
}

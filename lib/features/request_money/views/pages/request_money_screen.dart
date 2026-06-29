import 'package:banking_app/common_widgets/colors.dart';
import 'package:banking_app/features/home/views/widgets/buildAmountCard_widget.dart';
import 'package:banking_app/features/home/views/widgets/date_picker_widget.dart';
import 'package:banking_app/features/home/views/widgets/inputFiled_widget.dart';
import 'package:flutter/material.dart';

class RequestMoneyScreen extends StatefulWidget {
  const RequestMoneyScreen({super.key});

  @override
  State<RequestMoneyScreen> createState() => _RequestMoneyScreenState();
}

class _RequestMoneyScreenState extends State<RequestMoneyScreen> {
  final TextEditingController _payerNameController = TextEditingController(
    text: 'Tanya Myroniuk',
  );
  final TextEditingController _emailController = TextEditingController(
    text: 'tanya.myroniuk@gmail.com',
  );
  final TextEditingController _descriptionController = TextEditingController(
    text: 'Tanya Myroniuk',
  );
  final TextEditingController _amountController = TextEditingController(
    text: '26.00.00',
  );

  int selectedDay = 28;
  int selectedMonth = 9;
  int selectedYear = 2000;
  String currency = 'USD';

  @override
  void dispose() {
    _payerNameController.dispose();
    _emailController.dispose();
    _descriptionController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 20,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Request Money',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LabeledInputField(
                label: 'Payer Name',
                controller: _payerNameController,
                icon: Icons.person_outline,
              ),
              const SizedBox(height: 20),
              LabeledInputField(
                label: 'Email Address',
                controller: _emailController,
                icon: Icons.mail_outline,
              ),
              const SizedBox(height: 20),
              LabeledInputField(
                label: 'Description',
                controller: _descriptionController,
                icon: Icons.person_outline,
              ),
              const SizedBox(height: 20),
              const Text(
                'Monthly Due By',
                style: TextStyle(color: AppColors.labelColor, fontSize: 13),
              ),
              const SizedBox(height: 8),
              DatePickerRow(
                day: selectedDay,
                month: selectedMonth,
                year: selectedYear,
                onDayTap: () {},
                onMonthTap: () {},
                onYearTap: () {},
              ),
              const SizedBox(height: 28),
              AmountCard(
                amountController: _amountController,
                currency: currency,
                onChangeCurrency: () {},
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Send Money',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}

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

  static const Color bgColor = Color(0xFF0E0E16);
  static const Color cardColor = Color(0xFF1A1A24);
  static const Color borderColor = Color(0xFF2A2A38);
  static const Color labelColor = Color(0xFF8B8B9A);
  static const Color blueAccent = Color(0xFF3461FD);
  static const Color redAccent = Color(0xFFE5544D);

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
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
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
              _buildInputField(
                label: 'Payer Name',
                controller: _payerNameController,
                icon: Icons.person_outline,
              ),
              const SizedBox(height: 20),
              _buildInputField(
                label: 'Email Address',
                controller: _emailController,
                icon: Icons.mail_outline,
              ),
              const SizedBox(height: 20),
              _buildInputField(
                label: 'Description',
                controller: _descriptionController,
                icon: Icons.person_outline,
              ),
              const SizedBox(height: 20),
              const Text(
                'Monthly Due By',
                style: TextStyle(color: labelColor, fontSize: 13),
              ),
              const SizedBox(height: 8),
              _buildDateRow(),
              const SizedBox(height: 28),
              _buildAmountCard(),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: blueAccent,
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

  Widget _buildInputField({
    required String label,
    required TextEditingController controller,
    required IconData icon,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(color: labelColor, fontSize: 13)),
        const SizedBox(height: 8),
        Row(
          children: [
            Icon(icon, color: labelColor, size: 18),
            const SizedBox(width: 8),
            Expanded(
              child: TextField(
                controller: controller,
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
        Container(height: 1, color: borderColor),
      ],
    );
  }

  Widget _buildDateRow() {
    return Row(
      children: [
        Expanded(
          child: _buildDatePickerBox(selectedDay.toString().padLeft(2, '0')),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _buildDatePickerBox(selectedMonth.toString().padLeft(2, '0')),
        ),
        const SizedBox(width: 12),
        Expanded(child: _buildDatePickerBox(selectedYear.toString())),
      ],
    );
  }

  Widget _buildDatePickerBox(String value) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: borderColor)),
        ),
        child: Text(
          value,
          style: const TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
    );
  }

  Widget _buildAmountCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: cardColor,
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
                style: TextStyle(color: labelColor, fontSize: 13),
              ),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'Change Currency?',
                  style: TextStyle(color: redAccent, fontSize: 13),
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
                  controller: _amountController,
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

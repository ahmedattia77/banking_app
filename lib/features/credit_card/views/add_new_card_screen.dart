import 'package:flutter/material.dart';
import '../models/credit_card.dart';
import '../widgets/credit_card_preview.dart';
import '../widgets/card_input_field.dart';

class AddNewCardScreen extends StatefulWidget {
  const AddNewCardScreen({super.key});

  @override
  State<AddNewCardScreen> createState() => _AddNewCardScreenState();
}

class _AddNewCardScreenState extends State<AddNewCardScreen> {
  final TextEditingController _cardNumberController = TextEditingController(
    text: "4562112245957852",
  );
  final TextEditingController _cardHolderController = TextEditingController(
    text: "Tanya Myroniuk",
  );
  final TextEditingController _expiryController = TextEditingController(
    text: "09/06/2024",
  );
  final TextEditingController _cvvController = TextEditingController(
    text: "6986",
  );

  String get formattedCardNumber {
    String text = _cardNumberController.text.replaceAll(' ', '');
    String formatted = '';
    for (int i = 0; i < text.length; i++) {
      if (i % 4 == 0 && i != 0) formatted += ' ';
      formatted += text[i];
    }
    return formatted;
  }

  @override
  void dispose() {
    _cardNumberController.dispose();
    _cardHolderController.dispose();
    _expiryController.dispose();
    _cvvController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // App Bar
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF4F4F4),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const Expanded(
                      child: Text(
                        'Add New Card',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(width: 40),
                  ],
                ),

                const SizedBox(height: 20),

                // Credit Card Preview
                CreditCardPreview(
                  cardNumber: formattedCardNumber,
                  cardHolder: _cardHolderController.text.toUpperCase(),
                  expiryDate: _expiryController.text,
                  cvv: _cvvController.text,
                ),

                const SizedBox(height: 30),

                const Text(
                  'Cardholder Name',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                CardInputField(
                  controller: _cardHolderController,
                  hintText: 'Tanya Myroniuk',
                  icon: Icons.person_outline,
                  onChanged: (_) => setState(() {}),
                ),

                const SizedBox(height: 20),

                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Expiry Date',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          CardInputField(
                            controller: _expiryController,
                            hintText: '09/06/2024',
                            onChanged: (_) => setState(() {}),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '4-digit CVV',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          CardInputField(
                            controller: _cvvController,
                            hintText: '6986',
                            maxLength: 4,
                            onChanged: (_) => setState(() {}),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                const Text(
                  'Card Number',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                CardInputField(
                  controller: _cardNumberController,
                  hintText: '4562 1122 4595 7852',
                  icon: Icons.credit_card,
                  maxLength: 19,
                  onChanged: (_) => setState(() {}),
                ),

                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

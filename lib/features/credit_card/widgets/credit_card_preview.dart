import 'package:flutter/material.dart';

class CreditCardPreview extends StatelessWidget {
  final String cardNumber;
  final String cardHolder;
  final String expiryDate;
  final String cvv;

  const CreditCardPreview({
    super.key,
    required this.cardNumber,
    required this.cardHolder,
    required this.expiryDate,
    required this.cvv,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 199,
      margin: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF0F1B4D), Color(0xFF1E2E6E)],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 15,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Chip + Contactless
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 40,
                  height: 28,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white70, width: 1.5),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: const Center(
                    child: Text(
                      'CHIP',
                      style: TextStyle(color: Colors.white70, fontSize: 10),
                    ),
                  ),
                ),
                const Icon(Icons.wifi, color: Colors.white70, size: 26),
              ],
            ),

            const Spacer(),

            Text(
              cardNumber.isEmpty ? '•••• •••• •••• ••••' : cardNumber,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 17.5,
                letterSpacing: 2.5,
                fontWeight: FontWeight.w500,
              ),
            ),

            const Spacer(),

            // Card Holder + Expiry + CVV
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'CARD HOLDER',
                      style: TextStyle(color: Colors.white60, fontSize: 10),
                    ),
                    Text(
                      cardHolder.isEmpty
                          ? 'TANYA MYRONIUK'
                          : cardHolder.toUpperCase(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13.5,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'EXPIRES',
                      style: TextStyle(color: Colors.white60, fontSize: 10),
                    ),
                    Text(
                      expiryDate.isEmpty ? '09/06/2024' : expiryDate,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13.5,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'CVV',
                      style: TextStyle(color: Colors.white60, fontSize: 10),
                    ),
                    Text(
                      cvv.isEmpty ? '6986' : cvv,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13.5,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 8),

            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Mastercard',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

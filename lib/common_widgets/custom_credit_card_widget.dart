import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCreditCardWidget extends StatelessWidget {
  const CustomCreditCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.6,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.2),
              spreadRadius: 2,
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
          image: const DecorationImage(
            image: AssetImage('assets/images/cart_background.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Color(0xFF20223A), BlendMode.overlay),
          ),

          gradient: const LinearGradient(
            colors: [Color(0xFF2A2E4B), Color(0xFF1B1D32)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),

        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/sim_icon.png"),
                  Image.asset(
                    "assets/images/wifi_icon.png",
                    color: Colors.white24,
                  ),
                ],
              ),
              const Spacer(),
              Text(
                '4562  1122  4595  7852',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'AR Jonson',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Expiry Date',
                        style: TextStyle(color: Colors.grey[300], fontSize: 12),
                      ),
                      const Text(
                        '24/2000',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CVV',
                        style: TextStyle(color: Colors.grey[300], fontSize: 12),
                      ),
                      Text(
                        '6986',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/svgs/master_cart_logo.svg"),
                      
                      Text(
                        'Mastercard',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

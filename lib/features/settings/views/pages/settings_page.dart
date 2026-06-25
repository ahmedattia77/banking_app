import 'package:banking_app/common_widgets/custom_appbar.dart';
import 'package:banking_app/features/settings/views/widgets/general_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          CustomAppbar(),
          GeneralText(),
          
        ],
      ),
    );
  }
}

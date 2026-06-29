import 'package:banking_app/common_widgets/custom_appbar.dart';
import 'package:banking_app/features/edit_profile/views/edit_profile_page.dart';
import 'package:banking_app/features/settings/views/widgets/general_text.dart';
import 'package:banking_app/features/settings/views/widgets/list_title_view.dart';
import 'package:flutter/material.dart';

const Map<String, String?> _settingsGeneralData = {
  'Language': "English",
  'My Profile': null,
  'Contact Us': null,
};

const List<String> _settingsSecurityData = [
  'Change Password',
  'Privacy Policy',
];

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _isSwithced = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const CustomAppbar(),
            const SizedBox(height: 30),
            const GeneralText(),
            const SizedBox(height: 10),

            ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: _settingsGeneralData.length,
              itemBuilder: (context, index) {
                String categoryKey = _settingsGeneralData.keys.elementAt(index);
                String? subCategoryValue = _settingsGeneralData.values
                    .elementAt(index);
                return ListTitleView(
                  category: categoryKey,
                  subCategory: subCategoryValue,
                  onTap: () {
                    switch (categoryKey) {
                      case 'Language':
                        break;
                      case 'My Profile':
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditProfilePage(),
                          ),
                        );
                        break;
                      case 'Contact Us':
                        break;
                    }
                  },
                );
              },
            ),

            const SizedBox(height: 30),
            const GeneralText(),
            const SizedBox(height: 10),

            ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: _settingsSecurityData.length,
              itemBuilder: (context, index) {
                return ListTitleView(
                  category: _settingsSecurityData.elementAt(index),
                  subCategory: null,
                  onTap: () {
                    switch (_settingsSecurityData[index]) {
                      case 'Change Password':
                        break;
                      case 'Privacy Policy':
                        break;
                    }
                  },
                );
              },
            ),
            const SizedBox(height: 20),
            Text("Choose what data you share with us"),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Biometric",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Switch(
                  value: _isSwithced,
                  onChanged: (value) {
                    setState(() {
                      _isSwithced = !_isSwithced;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

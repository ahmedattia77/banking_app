import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/profile_header_widget.dart';
import '../widgets/edit_profile_form.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  String fullName = 'Tanya Myroniuk';
  String jobTitle = 'Senior Designer';

  void _updateName(String newName) {
    setState(() {
      fullName = newName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF13141F),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            const SizedBox(height: 30),
            const CustomAppBar(title: 'Edit Profile'),
            const SizedBox(height: 20),
            ProfileHeaderWidget(
              fullName: fullName,
              jobTitle: jobTitle,
              onImageTap: () {
              },
            ),
            const SizedBox(height: 24),
            EditProfileForm(initialName: fullName, onNameChanged: _updateName),
          ],
        ),
      ),
    );
  }
}

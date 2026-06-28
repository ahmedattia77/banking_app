import 'package:banking_app/features/edit_profile/widgets/birth_data_picker.dart';
import 'package:flutter/material.dart';
import 'name_text_field.dart';
import 'email_text_field.dart';
import 'phone_text_field.dart';
import 'birth_data_picker.dart'; // ✅ صح: birth_date_picker مش birth_data_picker

class EditProfileForm extends StatefulWidget {
  final String? initialName;
  final String? initialEmail;
  final String? initialPhone;
  final ValueChanged<String>? onNameChanged; // ✅ مهم للتحديث

  const EditProfileForm({
    super.key,
    this.initialName = 'Tanya Myroniuk',
    this.initialEmail = 'tanya myroniuk@gmail.com',
    this.initialPhone = '+8801712663389',
    this.onNameChanged,
  });

  @override
  State<EditProfileForm> createState() => _EditProfileFormState();
}

class _EditProfileFormState extends State<EditProfileForm> {
  late final TextEditingController _nameController;
  late final TextEditingController _emailController;
  late final TextEditingController _phoneController;

  String _birthDate = '28 Jan 2000'; // ✅ String مش TextEditingController

  @override
  void initState() {
    super.initState();
    // ✅ تهيئة الـ Controllers
    _nameController = TextEditingController(text: widget.initialName);
    _emailController = TextEditingController(text: widget.initialEmail);
    _phoneController = TextEditingController(text: widget.initialPhone);
  }

  @override
  void dispose() {
    // ✅ التخلص من الـ Controllers عشان الذاكرة
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  void _onDateChanged(int day, String month, int year) {
    setState(() {
      _birthDate = '$day ${month.substring(0, 3)} $year';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ✅ Name TextField
        NameTextField(
          controller: _nameController,
          onChanged: (value) {
            widget.onNameChanged?.call(value); // ✅ تحديث الاسم في الـ Header
          },
        ),

        // ✅ Email TextField
        EmailTextField(controller: _emailController),

        // ✅ Phone TextField
        PhoneTextField(controller: _phoneController),

        // ✅ Birth Date Picker
        BirthDatePicker(onDateChanged: _onDateChanged),

        const SizedBox(height: 60),
        Text(
          'Joined 28 Jan 2021',
          style: TextStyle(color: Colors.grey[400], fontSize: 14),
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}

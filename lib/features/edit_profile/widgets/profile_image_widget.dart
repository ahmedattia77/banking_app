import 'package:flutter/material.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 55,
      backgroundColor: Colors.grey[300],
      // غير المسار ده لصورتك الفعلية
      backgroundImage: const AssetImage('assets/images/edit_profile.png'),
    );
  }
}

import 'package:flutter/material.dart';

class ProfileImageWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final double radius;

  const ProfileImageWidget({super.key, this.onTap, this.radius = 55});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: radius,
        backgroundColor: Colors.grey[300],
        backgroundImage: const AssetImage('assets/images/edit_profile.png'),
      ),
    );
  }
}

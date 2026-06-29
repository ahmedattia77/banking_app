import 'package:flutter/material.dart';
import 'profile_image_widget.dart';

class ProfileHeaderWidget extends StatelessWidget {
  final String fullName;
  final String jobTitle;
  final VoidCallback? onImageTap;

  const ProfileHeaderWidget({
    super.key,
    required this.fullName,
    required this.jobTitle,
    this.onImageTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileImageWidget(onTap: onImageTap, radius: 55),
        const SizedBox(height: 12),
        Text(
          fullName,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(
          jobTitle,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    );
  }
}

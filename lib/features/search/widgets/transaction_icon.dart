import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransactionIcon extends StatelessWidget {
  final Color circleColor;
  final Color iconColor;
  final String iconPath;

  const TransactionIcon({
    super.key,
    required this.circleColor,
    required this.iconColor,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46,
      height: 46,
      decoration: BoxDecoration(color: circleColor, shape: BoxShape.circle),
      child: Center(
        child: SvgPicture.asset(
          iconPath,
          width: 26,
          height: 26,
          colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
        ),
      ),
    );
  }
}

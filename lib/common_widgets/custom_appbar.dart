import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppbar extends StatelessWidget {
  // final Widget leading;
  // final Widget ?logoutIcon;
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Container(
          alignment: Alignment.center,
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 24, 25, 38),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(width: 0.2),
          ),
          child: IconButton(
            constraints: const BoxConstraints(),
            padding: EdgeInsets.zero,
            alignment: Alignment.center,
            icon: SvgPicture.asset('assets/svgs/logout_icon.svg'),
            onPressed: () {},
          ),
        ),
      ],
      leading: Container(
        alignment: Alignment.center,
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 24, 25, 38),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 0.2),
        ),
        child: IconButton(
          constraints: const BoxConstraints(),
          padding: EdgeInsets.zero,
          alignment: Alignment.center,
          icon: Icon(Icons.navigate_before_outlined, size: 32),
          onPressed: () {},
        ),
      ),
      centerTitle: true,
      title: Text("Settings"),
    );
  }
}

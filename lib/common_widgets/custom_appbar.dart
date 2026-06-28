import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppbar extends StatelessWidget {
  final String title;
  final Widget? leading;
  final Icon? action;
  final String? actionSvgPath;
  final VoidCallback leadingCallBack;
  final VoidCallback actionCallBack;
  const CustomAppbar({
    super.key,
    this.leading,
    required this.title,
    this.action,
    this.actionSvgPath,
    required this.leadingCallBack,
    required this.actionCallBack,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        if (action != null || actionSvgPath != null)
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
              icon: actionSvgPath != null && actionSvgPath!.isNotEmpty
                  ? SvgPicture.asset(actionSvgPath!)
                  : (action ?? const SizedBox()),
              onPressed: () => actionCallBack(),
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
          onPressed: () => leadingCallBack(),
        ),
      ),
      centerTitle: true,
      title: Text(title),
    );
  }
}

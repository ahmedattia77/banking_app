import 'package:flutter/material.dart';

class HomeIconContianer extends StatelessWidget {
  final VoidCallback onClick;
  final Icon icon;
  final String title;
  const HomeIconContianer({
    super.key,
    required this.onClick,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () => onClick(),
          child: Container(
            alignment: Alignment.center,
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 24, 25, 38),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(width: 0.2),
            ),
            child: icon,
          ),
        ),
        Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}

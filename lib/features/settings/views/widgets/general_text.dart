


import 'package:flutter/material.dart';

class GeneralText extends StatelessWidget {
  const GeneralText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("general" , style: TextStyle(
      fontSize: 16 ,
      fontWeight: FontWeight.w400,
    ),);
  }
}
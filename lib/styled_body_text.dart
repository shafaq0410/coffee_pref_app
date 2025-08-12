

import 'package:flutter/material.dart';

class StyledBodyText extends StatelessWidget {
  const StyledBodyText(this.text ,{super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.brown ,
fontWeight: FontWeight.bold,
        fontSize: 18,
      //  fontWeight: FontWeight.w400,
      ),
    );
  }
}
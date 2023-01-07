
import 'package:exercises_ui/shared/app_text.dart';
import 'package:flutter/material.dart';

class CustomRowText extends StatelessWidget {
  const CustomRowText({
    required this.text,
    required this.DfontSize,
    required this.fontWeight,
    required this.color,
    required this.iconColor,
    super.key,
  });
  //"How do you feel ?"
  final String text;
  final Color color;
  final double DfontSize;
  final FontWeight fontWeight;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppText(
            text: text,
            color: color,
            DFontSize: DfontSize,
            fontWeight: FontWeight.bold),
        Icon(
          Icons.more_horiz,
          color: iconColor,
        )
      ],
    );
  }
}
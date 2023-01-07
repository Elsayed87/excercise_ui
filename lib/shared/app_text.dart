import 'package:exercises_ui/const/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppText extends StatelessWidget {
  AppText({
    required this.text,
    required this.color,
    required this.DFontSize,
    required this.fontWeight,
    super.key,
  });
  final String? text;
  final Color? color;
  final double? DFontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '',
      style: TextStyle(
          fontSize: DFontSize ?? 16.sp,
          fontWeight: fontWeight ?? FontWeight.w400,
          color: color ?? AppColor.blackColor),
    );
  }
}
import 'package:exercises_ui/const/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainerIcon extends StatelessWidget {
  const CustomContainerIcon(
      {required this.icon, required this.containerColor, super.key});
  final icon;
  final containerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12).r,
      decoration: BoxDecoration(
          color: containerColor, borderRadius: BorderRadius.circular(12).r),
      child: Icon(
        icon,
        color: AppColor.whiteColor,
      ),
    );
  }
}

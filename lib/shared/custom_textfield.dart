import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/app_colors.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key, required this.hintText, this.isHide});
  final String hintText;
  final bool? isHide;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.blueColor.withOpacity(.5),
          border: Border.all(
              color: AppColor.blackColor.withOpacity(0.1), width: 1.w),
          borderRadius: BorderRadius.circular(12.r)),
      child: TextField(
        obscureText: isHide ?? false,
        decoration: InputDecoration(
            prefixIcon:  Icon(
              Icons.search,
              color: AppColor.whiteColor,
              size: 30.r,
            ),
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(
              color: AppColor.whiteColor.withOpacity(.5),
            ),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h)),
        style: TextStyle(color: AppColor.blackColor, fontSize: 18.sp),
      ),
    );
  }
}

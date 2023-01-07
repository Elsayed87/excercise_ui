import 'package:exercises_ui/const/app_colors.dart';
import 'package:exercises_ui/const/app_sizedBox.dart';
import 'package:exercises_ui/shared/app_text.dart';

import 'package:exercises_ui/widgets/custom_container_icoon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListCardItem extends StatelessWidget {
  const ListCardItem({
    required this.headerString,
    required this.subHeaderString,
    required this.color,
    required this.icon,
    super.key,
  });
  final icon;
  final color;
  final String headerString;
  final String subHeaderString;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: BoxDecoration(
          color: AppColor.grayColor.withOpacity(0.3),
          borderRadius: BorderRadius.circular(12.r)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            CustomContainerIcon(icon: icon, containerColor: color),
            AppSizedBox.wSizedBox10,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: headerString,
                  DFontSize: 18.sp,
                  color: AppColor.blackColor,
                  fontWeight: FontWeight.bold,
                ),
                AppSizedBox.sizedBox5,
                AppText(
                  text: subHeaderString,
                  DFontSize: 16.sp,
                  color: AppColor.grayColor,
                  fontWeight: null,
                ),
              ],
            ),
          ],
        ),
        Icon(
          Icons.more_horiz,
          color: AppColor.blackColor,
        ),
      ]),
    );
  }
}
import 'package:exercises_ui/const/app_colors.dart';
import 'package:exercises_ui/const/app_sizedBox.dart';

import 'package:exercises_ui/shared/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FaceEmojes extends StatelessWidget {
  const FaceEmojes({
    required this.faceText,
    required this.faceState,
    super.key,
  });
  final String faceText;
  final String faceState;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: EdgeInsets.all(12).r,
            decoration: BoxDecoration(
                color: AppColor.blueColor.withOpacity(.5),
                borderRadius: BorderRadius.circular(12).r),
            child: AppText(
              text: faceText,
              DFontSize: 25.sp,
              color: null,
              fontWeight: null,
            )),
        AppSizedBox.sizedBox10,
        AppText(
            text: faceState,
            color: AppColor.whiteColor,
            DFontSize: 16.sp,
            fontWeight: FontWeight.w300)
      ],
    );
  }
}

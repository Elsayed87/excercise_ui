import 'package:exercises_ui/const/app_colors.dart';
import 'package:exercises_ui/const/app_sizedBox.dart';
import 'package:exercises_ui/const/sharedlist.dart';
import 'package:exercises_ui/shared/app_text.dart';
import 'package:exercises_ui/shared/custom_textfield.dart';
import 'package:exercises_ui/shared/face_emoj.dart';
import 'package:exercises_ui/shared/row_text.dart';
import 'package:exercises_ui/widgets/card_item.dart';
import 'package:exercises_ui/widgets/custom_container_icoon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExercisesPage extends StatelessWidget {
  const ExercisesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blueColor.withOpacity(0.8),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
              child: Column(
                children: [
                  // app bar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            text: "Hi,Obai",
                            color: AppColor.whiteColor,
                            DFontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          AppSizedBox.sizedBox5,
                          AppText(
                            text: "6Jan,2023",
                            color: AppColor.grayColor,
                            DFontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                      CustomContainerIcon(
                          icon: Icons.notifications,
                          containerColor: AppColor.blueColor.withOpacity(.7)),
                    ],
                  ),
                  //search bar item.
                  AppSizedBox.sizedBox20,
                  const CustomTextFeild(
                    hintText: 'Search',
                  ),
                  AppSizedBox.sizedBox20,
                  // text how do you feel?
                  CustomRowText(
                      text: "How do you feel ?",
                      DfontSize: 16.sp,
                      color: AppColor.whiteColor,
                      fontWeight: FontWeight.bold,
                      iconColor: AppColor.whiteColor),
                  AppSizedBox.sizedBox20,
                  // another Row that conatin emaojes
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      FaceEmojes(
                        faceText: '😌',
                        faceState: "Badly",
                      ),
                      FaceEmojes(
                        faceText: '☺',
                        faceState: "Fine",
                      ),
                      FaceEmojes(
                        faceText: '😄',
                        faceState: "Well",
                      ),
                      FaceEmojes(
                        faceText: '😃',
                        faceState: "Excellent",
                      ),
                    ],
                  ),
                  AppSizedBox.sizedBox30,
                ],
              ),
            ),
            //the next half of bage that contain container
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
                decoration: BoxDecoration(
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.r),
                        topRight: Radius.circular(20.r))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomRowText(
                        text: "Exercisises",
                        DfontSize: 16.sp,
                        color: AppColor.blackColor,
                        fontWeight: FontWeight.bold,
                        iconColor: AppColor.blackColor),
                    //listview
                    AppSizedBox.sizedBox10,
                    Expanded(
                      child: ListView.builder(
                          itemCount: headerStringList.length,
                          itemBuilder: (BuildContext, i) {
                            return ListCardItem(
                              headerString: headerStringList[i],
                              subHeaderString: subHeaderStringList[i],
                              color: colorList[i],
                              icon: iconlist[i],
                            );
                          }),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

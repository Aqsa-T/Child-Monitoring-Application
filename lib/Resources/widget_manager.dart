import 'package:flutter/material.dart';
import 'package:fyp_app/Resources/styles_manager.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'colors_manager.dart';

Widget boxWidget(
    {required String text, required TextEditingController controller}) {
  return Container(
    height: 60,
    margin: const EdgeInsets.symmetric(horizontal: 16),
    padding: const EdgeInsets.all(8),
    width: double.infinity,
    decoration: BoxDecoration(
      color: AppColors.lightGrey,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
            color: AppColors.grey, blurRadius: 4, offset: const Offset(1, 3)),
      ],
    ),
    alignment: Alignment.centerLeft,
    child: TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: text,
        border: InputBorder.none,
      ),
    ),
  );
}

Widget button({required String text, Color? background, Color? textColor}) {
  return Container(
    height: 7.h,
    margin: const EdgeInsets.symmetric(horizontal: 16),
    padding: const EdgeInsets.all(8),
    width: double.infinity,
    decoration: BoxDecoration(
      color: background ?? AppColors.primary,
      borderRadius: BorderRadius.circular(10),
    ),
    alignment: Alignment.center,
    child: Text(
      text,
      style: getRegularStyle(color: textColor ?? AppColors.white, fontSize: 20),
    ),
  );
}

Widget stateCard({required Widget widget}) {
  return Container(
    // padding: EdgeInsets.only(left: 16, top: 16, bottom: 8, right: 8),
    height: 17.h,
    width: 45.w,
    margin: EdgeInsets.fromLTRB(1.w, 2.h, 1.w, 1.h),
    //padding: EdgeInsets.fromLTRB(1.w, 1.h, 1.w, 5.h),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.sp),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 4,
            offset: Offset(1, 3.5),
          )
        ]),
    child: widget,
  );
}

Widget recentCard({required Widget widget, Color? background}) {
  return Container(
    height: 15.h,
    width: 100.w,
    padding: EdgeInsets.fromLTRB(1.w, 1.h, 1.w, 1.h),
    margin: EdgeInsets.fromLTRB(1.w, 1.h, 1.w, 1.h),
    decoration: BoxDecoration(
        color: background ?? Colors.white,
        borderRadius: BorderRadius.circular(20)),
    child: widget,
  );
}

Widget catWidget({required Widget widget}) {
  return Container(
      height: 18.h,
      width: 95.w,
      margin: EdgeInsets.fromLTRB(1.w, 1.h, 1.w, 0.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.sp),
        border: Border.all(color: AppColors.primary),
        // boxShadow: [
        //   // BoxShadow(
        //   //   color: Colors.grey,
        //   //   blurRadius: 4,
        //   //   offset: Offset(1, 1),
        //   // )
        // ]
      ),
      alignment: Alignment.center,
      child: widget);
}

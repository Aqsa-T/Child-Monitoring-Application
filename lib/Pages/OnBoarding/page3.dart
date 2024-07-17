import 'package:flutter/material.dart';
import 'package:fyp_app/Resources/assets_manager.dart';
import 'package:fyp_app/Resources/colors_manager.dart';
import 'package:fyp_app/Resources/dimen_manager.dart';
import 'package:fyp_app/Resources/strings_manager.dart';
import 'package:fyp_app/Resources/styles_manager.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AppAssets.onboarding3),
        SizedBox(
          height: AppMargin.m20,
        ),
        Text(
          AppStrings.onboarding3Title,
          style: getRegularStyle(color: AppColors.black, fontSize: 19.sp),
        ),
        SizedBox(
          height: AppMargin.m18,
        ),
        Text(
          AppStrings.onboarding3SubTitle,
          style: getRegularStyle(fontSize: 16.sp, color: AppColors.grey),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fyp_app/Pages/Activity/main_page.dart';
import 'package:fyp_app/Pages/History/main_page.dart';
import 'package:fyp_app/Pages/Threats/main_page.dart';
import 'package:fyp_app/Resources/assets_manager.dart';
import 'package:fyp_app/Resources/styles_manager.dart';
import 'package:fyp_app/Resources/widget_manager.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../Resources/colors_manager.dart';
import '../Suspicious Sites/main_page.dart';

class Categories extends StatelessWidget {
  Categories({super.key});

  final List data = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 5.h,
          ),
          Text(
            "Features",
            textAlign: TextAlign.justify,
            style: getMediumStyle(color: Colors.black, fontSize: 20.sp),
          ),
          Container(
              padding: EdgeInsets.fromLTRB(1.w, 0.h, 1.w, 0.h),
              margin: EdgeInsets.fromLTRB(2.w, 0.h, 2.w, 0.h),
              width: 200.w,
              height: 80.h,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HistoryMain(),
                          )),
                      child: catWidget(
                          widget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppAssets.searchHistory,
                            width: 15.w,
                            height: 10.h,
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            "History",
                            style: getMediumStyle(
                                color: AppColors.grey, fontSize: 18.sp),
                          )
                        ],
                      ))),
                  GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TimeSpentMain(),
                          )),
                      child: catWidget(
                          widget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppAssets.timeSpent,
                            width: 15.w,
                            height: 10.h,
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            "Activity",
                            style: getMediumStyle(
                                color: AppColors.grey, fontSize: 18.sp),
                          )
                        ],
                      ))),
                  GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ThreatMain(),
                          )),
                      child: catWidget(
                          widget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppAssets.threats,
                            width: 15.w,
                            height: 10.h,
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            "Threats Hidden",
                            style: getMediumStyle(
                                color: AppColors.grey, fontSize: 18.sp),
                          )
                        ],
                      ))),
                  GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SuspiciousMain(),
                          )),
                      child: catWidget(
                          widget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppAssets.maliciousLinks,
                            width: 15.w,
                            height: 10.h,
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            "Suspicious Sites",
                            style: getMediumStyle(
                                color: AppColors.grey, fontSize: 18.sp),
                          )
                        ],
                      ))),
                ],
              )),
        ],
      ),
    );
  }
}

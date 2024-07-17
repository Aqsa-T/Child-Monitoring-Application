import 'package:flutter/material.dart';
import 'package:fyp_app/Pages/OnBoarding/page1.dart';
import 'package:fyp_app/Pages/OnBoarding/page2.dart';
import 'package:fyp_app/Pages/OnBoarding/page3.dart';
import 'package:fyp_app/Resources/colors_manager.dart';
import 'package:fyp_app/Resources/dimen_manager.dart';
import 'package:fyp_app/Resources/routes_manager.dart';
import 'package:fyp_app/Resources/strings_manager.dart';
import 'package:fyp_app/Resources/styles_manager.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final PageController _controller = PageController();
  bool isLastPage = false;
  bool isBack = false;

  List pages = [const Page1(), const Page2(), const Page3()];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: AppMargin.m20),
            alignment: Alignment.topRight,
            child: TextButton(
                onPressed: () => _controller.jumpToPage(pages.length),
                child: isLastPage
                    ? const Text(
                        "",
                      )
                    : Text(
                        AppStrings.skip,
                        style: getRegularStyle(
                            fontSize: 15.sp, color: AppColors.black),
                      )),
          ),
          SizedBox(
            width: 90.w,
            height: 80.h,
            child: PageView(
                controller: _controller,
                onPageChanged: (value) {
                  setState(() {
                    isLastPage = (value == 2);
                    isBack = value < 1;
                  });
                },
                children: List.generate(pages.length, (index) => pages[index])),
          ),
          isLastPage
              ? GestureDetector(
                  onTap: () =>
                      Navigator.pushReplacementNamed(context, Routes.login),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: AppPadding.p16),
                    alignment: Alignment.center,
                    width: 36.w,
                    height: 5.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8.sp),
                      color: AppColors.lightPrimary,
                    ),
                    child: Text(
                      AppStrings.done,
                      style: getRegularStyle(
                          color: AppColors.primary, fontSize: 15.sp),
                    ),
                  ),
                )
              : Container(
                  width: 90.w,
                  height: 10.h,
                  padding: EdgeInsets.symmetric(horizontal: AppPadding.p16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SmoothPageIndicator(
                        controller: _controller,
                        count: 3,
                        effect: WormEffect(
                          dotWidth: 4.w,
                          dotHeight: 2.h,
                          activeDotColor: AppColors.primary,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                          ///////////////////////////////
                        },
                        child: Container(
                          width: 18.w,
                          height: 5.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10.sp),
                            color: AppColors.lightPrimary,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            AppStrings.next,
                            style: getRegularStyle(
                                color: AppColors.primary, fontSize: 16.sp),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}

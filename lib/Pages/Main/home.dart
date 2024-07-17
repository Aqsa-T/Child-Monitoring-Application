import 'package:flutter/material.dart';
import 'package:fyp_app/Resources/assets_manager.dart';
import 'package:fyp_app/Resources/colors_manager.dart';
import 'package:fyp_app/Resources/styles_manager.dart';
import 'package:fyp_app/Resources/widget_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            height: 50.h,
            width: 30.w,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage(AppAssets.image), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(24.sp)),
            child: Stack(
              children: [
                Positioned(
                  bottom: 1,
                  child: Column(
                    children: [
                      Text("WELCOME BACK",
                          textAlign: TextAlign.left,
                          style: getSemiBoldStyle(
                              color: AppColors.black, fontSize: 18.sp)),
                      Text(
                        "ZOYA",
                        textAlign: TextAlign.left,
                        style: getSemiBoldStyle(
                            color: AppColors.black, fontSize: 18.sp),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Column(
                    children: [
                      CircleAvatar(
                        maxRadius: 30.sp,
                        child: Image.asset(
                          AppAssets.mainicon,
                          fit: BoxFit.cover,
                        ),
                      ),
                      // SizedBox(
                      //   height: 5.h,
                      // ),
                      // CircleAvatar(
                      //   maxRadius: 28.sp,
                      //   child: Image.asset(AppAssets.child,fit: BoxFit.cover,),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 35.h,
            width: 35.w,
            padding: EdgeInsets.fromLTRB(2.w, 1.h, 1.w, 2.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Quick View",
                  style: getMediumStyle(color: Colors.black, fontSize: 24.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    stateCard(
                        widget: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //Image.asset(AppAssets.sleep),
                            // Container(
                            //   margin: EdgeInsets.only(bottom: 20,right: 8),
                            //   width: 15.w,
                            //   height: 15,
                            //   // decoration: BoxDecoration(
                            //   //     color: Colors.orange,
                            //   //     shape: BoxShape.circle
                            //   // ),
                            // ),
                          ],
                        ),
                        // SizedBox(height: 15,),
                        // Align(alignment: Alignment.topLeft,child: Text("10 min",style: getSemiBoldStyle(color: Colors.black,fontSize: 20),),),
                        // SizedBox(height: 5,),
                        // Align(alignment: Alignment.topLeft,child: Text("baby is not ready for this yet",style: getRegularStyle(color: Colors.black,fontSize: 15),),),
                      ],
                    )),
                    stateCard(
                        widget: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //Image.asset(AppAssets.bottle),
                            // Container(
                            //   margin: EdgeInsets.only(bottom: 20,right: 8),
                            //   width: 15,
                            //   height: 15,
                            //   decoration: BoxDecoration(
                            //       color: Colors.lightGreen,
                            //       shape: BoxShape.circle
                            //   ),
                            // ),
                          ],
                        ),
                        // SizedBox(height: 15,),
                        // Align(alignment: Alignment.topLeft,child: Text("5 min",style: getSemiBoldStyle(color: Colors.black,fontSize: 20),),),
                        // SizedBox(height: 5,),
                        // Align(alignment: Alignment.topLeft,child: Text("baby is not ready for this yet",style: getRegularStyle(color: Colors.black,fontSize: 15),),),
                      ],
                    )),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 200.h,
            padding: EdgeInsets.fromLTRB(2.w, 0.h, 3.w, 2.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Recent",
                  style: getMediumStyle(color: Colors.black, fontSize: 24.sp),
                ),
                SizedBox(
                  height: 40.h,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      recentCard(
                          widget: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  //Image.asset(AppAssets.bottle,scale: 0.8,),
                                  SizedBox(width: 10.w),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    //Content to Insert: Dummy Data Right Now:
                                    children: [
                                      Text(
                                        "65 Minutes",
                                        style: getRegularStyle(
                                            color: Colors.black,
                                            fontSize: 18.sp),
                                      ),
                                      Text(
                                        "Time Online for Today",
                                        style: getRegularStyle(
                                            color: Colors.black,
                                            fontSize: 16.sp),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 8.h,
                                        width: 1.w,
                                        color: Colors.black,
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Icon(
                                    Iconsax.timer_1,
                                    size: 40,
                                  ),
                                ],
                              )
                            ],
                          ),
                          background: AppColors.card1),
                      recentCard(
                          widget: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  // Image.asset(AppAssets.diaper,scale: 1.6,),
                                  SizedBox(width: 10.w),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "32",
                                        style: getRegularStyle(
                                            color: Colors.black,
                                            fontSize: 18.sp),
                                      ),
                                      Text(
                                        "Ads Blocked Currently",
                                        style: getRegularStyle(
                                            color: Colors.black,
                                            fontSize: 16.sp),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 8.h,
                                        width: 1.w,
                                        color: Colors.black,
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Icon(
                                    Iconsax.shield_cross,
                                    size: 40,
                                  ),
                                ],
                              )
                            ],
                          ),
                          background: AppColors.card2),
                      // RecentCard(
                      //     widget: Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     Row(
                      //       children: [
                      //         //Image.asset(AppAssets.sleep,scale: 1,),
                      //         SizedBox(width: 10,),
                      //         Column(
                      //           mainAxisAlignment: MainAxisAlignment.center,
                      //           crossAxisAlignment: CrossAxisAlignment.start,
                      //           // children: [
                      //           //   Text("1 hr 15 min ago",style: getRegularStyle(color: Colors.black,fontSize: 17),),
                      //           //   Text("eat for 10 min",style: getRegularStyle(color: Colors.black,fontSize: 13),),
                      //           // ],
                      //         )
                      //       ],
                      //     ),
                      //     Row(
                      //       children: [
                      //         Column(
                      //           mainAxisAlignment: MainAxisAlignment.center,
                      //           children: [
                      //             Container(
                      //               height: 45,
                      //               width: 2,
                      //               color: Colors.black,
                      //             )
                      //           ],
                      //         ),
                      //         SizedBox(width: 5,),
                      //         Icon(Iconsax.timer_1,size: 40,),
                      //       ],
                      //     )
                      //   ],
                      // ),background: AppColors.card3),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

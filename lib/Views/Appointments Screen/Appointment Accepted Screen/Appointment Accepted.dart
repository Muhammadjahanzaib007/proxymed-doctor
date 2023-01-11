import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Custom Widget/book_now_button.dart';
import '../../../Custom Widget/custom_text.dart';
import '../../Payment Screen/Payment.dart';

class AppointmentAccepted extends StatefulWidget {
  const AppointmentAccepted({Key? key}) : super(key: key);

  @override
  State<AppointmentAccepted> createState() => _AppointmentAcceptedState();
}

class _AppointmentAcceptedState extends State<AppointmentAccepted> {
  bool selected = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(
            left: 20.0.w,
            right: 20.w,
          ),
          color: Colors.transparent,
          height: 147.h,
          width: double.infinity,
          child: Card(
            elevation: 0.0,
            child: Container(
              height: 147.h,
              width: double.infinity.w,
              padding: EdgeInsets.only(left: 14.w, top: 14.h, bottom: 14.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(width: 1, color: Color(0xffFFFFFF)),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 0),
                    blurRadius: 5.0,
                    color: Color(0xff000000).withOpacity(0.20),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60.h,
                        width: 55.w,
                        decoration: BoxDecoration(
                          color: Color(0xff96CCD5),
                          borderRadius: BorderRadius.circular(6.0.r),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Column(
                              children: [
                                CustomText(
                                  text: "27",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                  fontColor: Color(0xffFFFFFF),
                                ),
                                CustomText(
                                  text: "FEB",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                  fontColor: Color(0xffFFFFFF),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 40.w),
                                child: CustomText(
                                  text: "Dr. Pediatrician",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18.sp,
                                  fontColor: Color(0xff333333),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 40.w),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {});
                                  },
                                  child: Icon(
                                    FontAwesomeIcons.ellipsisVertical,
                                    color: Color(0xff677294),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          CustomText(
                            text: "online video consultation",
                            fontWeight: FontWeight.w300,
                            fontSize: 12.sp,
                            fontColor: Color(0xff96CCD5),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: "2022-10-26  01:00pm",
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                fontColor: Color(0xff677294),
                                letterSpacing: -0.3,
                              ),
                              CustomText(
                                text: "TND ",
                                fontWeight: FontWeight.w300,
                                fontSize: 16.sp,
                                fontColor: Color(0xff333333),
                                letterSpacing: -0.3,
                              ),
                              CustomText(
                                text: "40.000 ",
                                fontWeight: FontWeight.w300,
                                fontSize: 16.sp,
                                fontColor: Color.fromRGBO(103, 114, 148, 0.9),
                                letterSpacing: -0.3,
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 30.h,
                          width: 140.w,
                          child: BookNowButton(
                            onPressed: () {
                              // Get.to(SplashScreen());
                            },
                            height: 30.h,
                            width: 140.w,
                            buttonColor: Color(0xff0EBE7E),
                            text: "Accepted",
                            textColor: Color(0xffFFFFFF),
                            fontSize: 14.sp,
                          ),
                        ),
                        Container(
                          height: 30.h,
                          width: 140.w,
                          child: BookNowButton(
                            onPressed: () {
                              Get.to(Payment());
                            },
                            height: 30.h,
                            width: 140.w,
                            buttonColor: Color(0xffE76880),
                            text: "Pay Now",
                            textColor: Color(0xffFFFFFF),
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          padding: EdgeInsets.only(
            left: 20.0.w,
            right: 20.w,
          ),
          color: Colors.transparent,
          height: 147.h,
          width: double.infinity,
          child: Card(
            elevation: 0.0,
            child: Container(
              height: 147.h,
              width: double.infinity.w,
              padding: EdgeInsets.only(left: 14.w, top: 14.h, bottom: 14.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(width: 1, color: Color(0xffFFFFFF)),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 0),
                    blurRadius: 5.0,
                    color: Color(0xff000000).withOpacity(0.20),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60.h,
                        width: 55.w,
                        decoration: BoxDecoration(
                          color: Color(0xff96CCD5),
                          borderRadius: BorderRadius.circular(6.0.r),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Column(
                              children: [
                                CustomText(
                                  text: "27",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                  fontColor: Color(0xffFFFFFF),
                                ),
                                CustomText(
                                  text: "FEB",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                  fontColor: Color(0xffFFFFFF),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 40.w),
                                child: CustomText(
                                  text: "Dr. Pediatrician",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18.sp,
                                  fontColor: Color(0xff333333),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 40.w),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {});
                                  },
                                  child: Icon(
                                    FontAwesomeIcons.ellipsisVertical,
                                    color: Color(0xff677294),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          CustomText(
                            text: "online video consultation",
                            fontWeight: FontWeight.w300,
                            fontSize: 12.sp,
                            fontColor: Color(0xff96CCD5),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: "2022-10-26  01:00pm",
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                fontColor: Color(0xff677294),
                                letterSpacing: -0.3,
                              ),
                              CustomText(
                                text: "TND ",
                                fontWeight: FontWeight.w300,
                                fontSize: 16.sp,
                                fontColor: Color(0xff333333),
                                letterSpacing: -0.3,
                              ),
                              CustomText(
                                text: "40.000 ",
                                fontWeight: FontWeight.w300,
                                fontSize: 16.sp,
                                fontColor: Color.fromRGBO(103, 114, 148, 0.9),
                                letterSpacing: -0.3,
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 30.h,
                          width: 140.w,
                          child: BookNowButton(
                            onPressed: () {
                              // Get.to(SplashScreen());
                            },
                            height: 30.h,
                            width: 140.w,
                            buttonColor: Color(0xff0EBE7E),
                            text: "Accepted",
                            textColor: Color(0xffFFFFFF),
                            fontSize: 14.sp,
                          ),
                        ),
                        Container(
                          height: 30.h,
                          width: 140.w,
                          child: BookNowButton(
                            onPressed: () {
                              Get.to(Payment());
                            },
                            height: 30.h,
                            width: 140.w,
                            buttonColor: Color(0xffE76880),
                            text: "Paid",
                            textColor: Color(0xffFFFFFF),
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

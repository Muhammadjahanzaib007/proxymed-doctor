import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Custom Widget/book_now_button.dart';
import '../../../Custom Widget/custom_text.dart';
import '../../Appointment Details Screen/Appointment Details.dart';
import '../../Profile  Screen/Profile.dart';

class Today_Upcomming extends StatefulWidget {
  const Today_Upcomming({Key? key}) : super(key: key);

  @override
  State<Today_Upcomming> createState() => _Today_UpcommingState();
}

class _Today_UpcommingState extends State<Today_Upcomming> {
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 40.w),
                                child: SizedBox(
                                  height: 21.h,
                                  width: 155.w,
                                  child: GestureDetector(
                                    onTap: () {
                                      Get.to(AppointmentDetails());
                                    },
                                    child: CustomText(
                                      text: "Dr. Pediatrician",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18.sp,
                                      fontColor: Color(0xff333333),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    Get.to(CancleAppointment(context));
                                  });
                                },
                                child: Icon(
                                  FontAwesomeIcons.ellipsisVertical,
                                  color: Color(0xff677294),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 26.h,
                            width: 150.w,
                            child: CustomText(
                              text: "online video consultation",
                              fontWeight: FontWeight.w300,
                              fontSize: 12.sp,
                              fontColor: Color(0xff96CCD5),
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 117.w,
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
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 30.h,
                          width: 150.w,
                          child: BookNowButton(
                            onPressed: () {
                              // Get.to(SplashScreen());
                            },
                            height: 30.h,
                            width: 150.w,
                            buttonColor: Color(0xffF1F3F2),
                            text: "Pending",
                            textColor: Color(0xff000000).withOpacity(0.30),
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

Future<dynamic> CancleAppointment(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding:
              EdgeInsets.only(left: 0, right: 0, top: 418.5.h, bottom: 0.h).r,
          backgroundColor: Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: SizedBox(
                  width: double.infinity.w,
                  height: 188.h,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0.r),
                        topRight: Radius.circular(30.0.r),
                      ),
                    ),
                    color: Color(0xffFFFFFF),
                    child: Container(
                      padding: EdgeInsets.only(left: 20.w, right: 20.w).r,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 50.h,
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(CancleAppointment1(context));
                              },
                              child: CustomText(
                                text: "Cancel Appointment",
                                textAlign: TextAlign.left,
                                fontColor: Color(0xffE76880),
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Container(
                              width: 1,
                              color: Color(0xffCBCBCB),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(ProfileEdit());
                              },
                              child: CustomText(
                                text: "View Doctor Profile",
                                textAlign: TextAlign.left,
                                fontColor: Color(0xff000000),
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),
              ),
            ],
          ),
          // child: Container(
          //   child: Image.asset(
          //     'images/check_logo.png',
          //     height: 70.h,
          //     width: 70,
          //   ),
          // ),
        );
      });
}

Future<dynamic> CancleAppointment1(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding:
              EdgeInsets.only(left: 20.w, right: 20.w, top: 0.h, bottom: 0.h).r,
          backgroundColor: Colors.transparent,
          child: Column(
            children: [
              Center(
                child: Container(
                  width: double.infinity.w,
                  height: 167.h,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    color: Color(0xffFFFFFF),
                    child: Container(
                      padding: EdgeInsets.only(left: 28.w, right: 38.w).r,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 24.h,
                            ),
                            CustomText(
                              text: "Cancel Appointment",
                              textAlign: TextAlign.left,
                              fontColor: Color(0xff000000),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            CustomText(
                              text: "Are you sure you want to cancel?",
                              fontColor: Color(0xff677294),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),
                            SizedBox(
                              height: 34.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomText(
                                  text: "Cancel",
                                  fontColor: Color(0xff96CCD5),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                                SizedBox(
                                  width: 30.h,
                                ),
                                CustomText(
                                  text: "Ok",
                                  fontColor: Color(0xff96CCD5),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                          ]),
                    ),
                  ),
                ),
              ),
            ],
          ),
          // child: Container(
          //   child: Image.asset(
          //     'images/check_logo.png',
          //     height: 70.h,
          //     width: 70,
          //   ),
          // ),
        );
      });
}

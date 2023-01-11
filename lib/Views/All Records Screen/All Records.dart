import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../Custom Widget/book_now_button.dart';
import '../../Custom Widget/custom_text.dart';
import '../../CustomContainer/CustomContainer.dart';

class AllRecords extends StatefulWidget {
  const AllRecords({Key? key}) : super(key: key);

  @override
  State<AllRecords> createState() => _AllRecordsState();
}

class _AllRecordsState extends State<AllRecords> {
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      widget: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          titleSpacing: 0,
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Container(
            padding: EdgeInsets.only(
              left: 20.w,
              right: 20.w,
            ),
            child: Row(
              children: [
                Container(
                  height: 30.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(10.0.r),
                  ),
                  child: Center(
                      child: GestureDetector(
                    onTap: () {
                      //Get.off();
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Color(0xff677294),
                      size: 13,
                    ),
                  )),
                ),
                SizedBox(
                  width: 20,
                ),
                CustomText(
                  text: "All Records",
                  fontColor: Color(0xff333333),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.3,
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(children: [
                Container(
                  padding: EdgeInsets.only(
                    left: 20.0.w,
                    right: 20.w,
                  ),
                  color: Colors.transparent,
                  height: 130.h,
                  width: double.infinity,
                  child: Card(
                    elevation: 0.0,
                    child: Container(
                      height: 110.h,
                      width: double.infinity.w,
                      padding:
                          EdgeInsets.only(left: 14.w, top: 14.h, bottom: 14.h),
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
                                          text: "01",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14.sp,
                                          fontColor: Color(0xffFFFFFF),
                                        ),
                                        CustomText(
                                          text: "MAR",
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
                                          child: CustomText(
                                            text: "Record for Abdullah Mamun",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12.sp,
                                            fontColor: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {});
                                        },
                                        child: Icon(
                                          FontAwesomeIcons.ellipsisVertical,
                                          color: Color(0xff677294),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    height: 26.h,
                                    width: 150.w,
                                    child: CustomText(
                                      text: "Prescription",
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12.sp,
                                      fontColor: Color(0xff677294),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Padding(
                            padding: EdgeInsets.only(right: 10.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 22.h,
                                  width: 55.w,
                                  child: BookNowButton(
                                    onPressed: () {
                                      // Get.to(SplashScreen());
                                    },
                                    height: 22.h,
                                    width: 150.w,
                                    buttonColor:
                                        Color.fromRGBO(150, 204, 213, 0.1),
                                    text: "NEW",
                                    textColor: Color(0xff96CCD5),
                                    fontSize: 10.sp,
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
                Container(
                  padding: EdgeInsets.only(
                    left: 20.0.w,
                    right: 20.w,
                  ),
                  color: Colors.transparent,
                  height: 130.h,
                  width: double.infinity,
                  child: Card(
                    elevation: 0.0,
                    child: Container(
                      height: 110.h,
                      width: double.infinity.w,
                      padding:
                          EdgeInsets.only(left: 14.w, top: 14.h, bottom: 14.h),
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
                                          text: "01",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14.sp,
                                          fontColor: Color(0xffFFFFFF),
                                        ),
                                        CustomText(
                                          text: "MAR",
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
                                          child: CustomText(
                                            text: "Record for Shruti Kedia",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12.sp,
                                            fontColor: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {});
                                        },
                                        child: Icon(
                                          FontAwesomeIcons.ellipsisVertical,
                                          color: Color(0xff677294),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    height: 26.h,
                                    width: 150.w,
                                    child: CustomText(
                                      text: "Report",
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12.sp,
                                      fontColor: Color(0xff677294),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Padding(
                            padding: EdgeInsets.only(right: 10.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 22.h,
                                  width: 55.w,
                                  child: BookNowButton(
                                    onPressed: () {
                                      // Get.to(SplashScreen());
                                    },
                                    height: 22.h,
                                    width: 150.w,
                                    buttonColor:
                                        Color.fromRGBO(150, 204, 213, 0.1),
                                    text: "NEW",
                                    textColor: Color(0xff96CCD5),
                                    fontSize: 10.sp,
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
                Container(
                  padding: EdgeInsets.only(
                    left: 20.0.w,
                    right: 20.w,
                  ),
                  color: Colors.transparent,
                  height: 130.h,
                  width: double.infinity,
                  child: Card(
                    elevation: 0.0,
                    child: Container(
                      height: 110.h,
                      width: double.infinity.w,
                      padding:
                          EdgeInsets.only(left: 14.w, top: 14.h, bottom: 14.h),
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
                                          text: "01",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14.sp,
                                          fontColor: Color(0xffFFFFFF),
                                        ),
                                        CustomText(
                                          text: "MAR",
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
                                          child: CustomText(
                                            text: "Record for Shruti Kedia",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12.sp,
                                            fontColor: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {});
                                        },
                                        child: Icon(
                                          FontAwesomeIcons.ellipsisVertical,
                                          color: Color(0xff677294),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    height: 26.h,
                                    width: 150.w,
                                    child: CustomText(
                                      text: "Prescription",
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12.sp,
                                      fontColor: Color(0xff677294),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Padding(
                            padding: EdgeInsets.only(right: 10.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 22.h,
                                  width: 55.w,
                                  child: BookNowButton(
                                    onPressed: () {
                                      // Get.to(SplashScreen());
                                    },
                                    height: 22.h,
                                    width: 150.w,
                                    buttonColor:
                                        Color.fromRGBO(150, 204, 213, 0.1),
                                    text: "NEW",
                                    textColor: Color(0xff96CCD5),
                                    fontSize: 10.sp,
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
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

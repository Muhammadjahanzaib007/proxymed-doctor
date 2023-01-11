import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Custom Widget/custom_text.dart';
import '../../CustomContainer/CustomContainer.dart';

class Prescription extends StatefulWidget {
  const Prescription({Key? key}) : super(key: key);

  @override
  State<Prescription> createState() => _PrescriptionState();
}

class _PrescriptionState extends State<Prescription> {
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
                      Get.back();
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
                  text: "Prescription",
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
              padding: EdgeInsets.only(
                left: 20.w,
                right: 20.w,
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.w,
                    ),
                    Container(
                      padding: EdgeInsets.all(20.0),
                      height: 200.h,
                      width: double.infinity.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: "Dose  1",
                            fontColor: Color(0xff96CCD5),
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(
                            height: 7.h,
                          ),
                          Row(
                            children: [
                              CustomText(
                                text: "Tab calpol 10mg",
                                fontColor: Color(0xff677294),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w300,
                              ),
                              SizedBox(width: 30.w),
                              CustomText(
                                text: "1+1+1",
                                fontColor: Color(0xff677294),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w300,
                              ),
                            ],
                          ),
                          CustomText(
                            text: "5 days",
                            fontColor: Color(0xff677294),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w300,
                          ),
                          SizedBox(
                            height: 40.h,
                          ),
                          CustomText(
                            text: "Dose  2",
                            fontColor: Color(0xff96CCD5),
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(
                            height: 7.h,
                          ),
                          Row(
                            children: [
                              CustomText(
                                text: "Tab calpol 10mg",
                                fontColor: Color(0xff677294),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w300,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              CustomText(
                                text: "2+2+2",
                                fontColor: Color(0xff677294),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w300,
                              ),
                            ],
                          ),
                          CustomText(
                            text: "7 days",
                            fontColor: Color(0xff677294),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w300,
                          ),
                        ],
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

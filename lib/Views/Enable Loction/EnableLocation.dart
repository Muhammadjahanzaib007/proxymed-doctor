import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:proxymed_doctor/Custom%20Widget/button.dart';

import '../../Custom Widget/custom_text.dart';
import '../../CustomContainer/CustomContainer.dart';

class EnableLocation extends StatefulWidget {
  const EnableLocation({Key? key}) : super(key: key);

  @override
  State<EnableLocation> createState() => _EnableLocationState();
}

class _EnableLocationState extends State<EnableLocation> {
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      widget: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 30.h,
                width: 30.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffFFFFFF)),
                child: const Center(
                    child: Icon(Icons.arrow_back_ios_new,
                        size: 18, color: Color(0xff677294))),
              ),
            ),
          ),
          title: CustomText(
            text: "Enable Location Services",
            fontColor: Color(0xff333333),
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            letterSpacing: -0.3,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 52.w),
            child: Column(
              children: [
                SizedBox(
                  height: 98.h,
                ),
                Image.asset(
                  "assets/images/EnableLocation.png",
                  height: 214,
                  width: 214,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: 40.h,
                ),
                CustomText(
                  text: "Location",
                  fontWeight: FontWeight.w700,
                  fontSize: 20.sp,
                  fontColor: Color(0xff222222),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 19.h, bottom: 30.h),
                  child: CustomText(
                    text:
                        "Your location services are switched off. Pleaseenable location, to help us serve better.",
                    fontSize: 14.sp,
                    fontColor: Color(0xff677294),
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  height: 54.h,
                  width: double.infinity.w,
                  child: MyCustomButton(
                    onPressed: () {
                      // Get.to(addrecord(context));
                    },
                    height: 54.h,
                    width: double.infinity.w,
                    buttonColor: Color(0xffE76880),
                    text: "Enable Location",
                    textColor: Color(0xffFFFFFF),
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

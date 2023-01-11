import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Custom Widget/Custom OTP TextField/OTPTextField.dart';
import '../../Custom Widget/button.dart';
import '../../Custom Widget/custom_text.dart';

class ForgotPasswordOTP extends StatelessWidget {
  const ForgotPasswordOTP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Padding(
      padding: EdgeInsets.only(bottom: mediaQueryData.viewInsets.bottom),
      child: SizedBox(
        height: 390.h,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 5.h,
                  width: 130.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: const Color(0xffC4C4C4),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50.h, bottom: 10.h),
                child: CustomText(
                  text: "Enter 4 Digits Code",
                  textAlign: TextAlign.left,
                  fontColor: Color(0xff000000),
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Enter the 4 digits code that you received on\nyour email.",
                textAlign: TextAlign.left,
                style: TextStyle(
                    height: 1.9,
                    fontSize: 14,
                    color: Color(0xff677294),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Rubik"),
              ),
              SizedBox(
                height: 36.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OTPTextField(),
                  OTPTextField(),
                  OTPTextField(),
                  OTPTextField(),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.h),
                child: Container(
                  height: 54.h,
                  width: double.infinity.w,
                  child: MyCustomButton(
                    onPressed: () {
                      // Get.to(showCustomDialogtwo(context));
                    },
                    height: 54.h,
                    width: double.infinity.w,
                    buttonColor: Color(0xffE76880),
                    text: "Continue",
                    textColor: Color(0xffFFFFFF),
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

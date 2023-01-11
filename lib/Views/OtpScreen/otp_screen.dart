import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:proxymed_doctor/Views/LoginScreen/LoginScreen.dart';

import '../../Custom Widget/button.dart';
import '../../Custom Widget/custom_text.dart';
import '../../CustomContainer/CustomContainer.dart';
import 'otp_verification_screen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      widget: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 20.0.w, right: 20.0.w),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/opt.png",
                ),
                SizedBox(
                  height: 50.h,
                ),
                CustomText(
                  text: "Verification",
                  fontColor: Color(0xff000000),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomText(
                  text:
                      "Enter your mobile number. We will send your a\nVarification code via SMS",
                  textAlign: TextAlign.center,
                  fontColor: Color.fromRGBO(0, 0, 0, 0.4),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(
                  height: 50.h,
                ),
                Container(
                  height: 40.h,
                  width: double.infinity.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0.r),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(
                          0,
                          0,
                        ),
                        blurRadius: 4.0.r,
                        color: Color.fromRGBO(0, 0, 0, 0.20),
                      ),
                    ],
                  ),
                  child: TextField(
                    textAlign: TextAlign.center,
                    cursorColor: const Color(0xffC0C0C0),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding:
                          EdgeInsets.fromLTRB(80.0, 10.0, 80.0, 10.0).r,
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      focusedBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: "Enter phone Number",
                      hintStyle: TextStyle(
                        color: Color(0xffD9D9D9),
                        fontFamily: 'Rubik',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                Container(
                  height: 54.h,
                  width: double.infinity.w,
                  child: MyCustomButton(
                    onPressed: () {
                      Get.to(OtpVerificationScreen());
                    },
                    height: 54.h,
                    width: double.infinity.w,
                    buttonColor: Color(0xffE76880),
                    text: "Get Code",
                    textColor: Color(0xffFFFFFF),
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      text: "Have an account?",
                      fontColor: Color(0xff96CCD5),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(LoginScreen());
                      },
                      child: CustomText(
                        text: " Log in",
                        fontColor: Color(0xff96CCD5),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

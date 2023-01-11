import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Custom Widget/button.dart';
import '../../Custom Widget/custom_text.dart';
import '../Sign Up Screen/signup_screen.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
              colors: [
                Color.fromRGBO(97, 206, 255, 0.72),
                Color(0xffFFFFFF),
                Color(0xffFFFFFF),
                Color.fromRGBO(150, 204, 213, 0.3)
              ],
            ),
          ),
          padding: EdgeInsets.only(left: 20, right: 20, top: 50).r,
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
                text: "You will get a code via SMS\nto +92 300 123 1234",
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
                width: double.maxFinite.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0.r),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(
                        0,
                        4.0,
                      ),
                      blurRadius: 20.0.r,
                      color: Color.fromRGBO(0, 0, 0, 0.20),
                    ),
                  ],
                ),
                child: TextField(
                  cursorColor: const Color(0xffC0C0C0),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10.0.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.0.r)),
                    hintText: "*****",
                    hintStyle: const TextStyle(
                      color: Color(0xffD9D9D9),
                      fontFamily: 'Rubik',
                      fontSize: 16,
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
                    Get.to(SignupScreen());
                  },
                  height: 54.h,
                  width: double.infinity.w,
                  buttonColor: Color(0xffE76880),
                  text: "Get Code",
                  textColor: Color(0xffFFFFFF),
                  fontSize: 18.sp,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: "Do not Recevied the Verification code",
                    fontColor: Color(0xff000000),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  GestureDetector(
                    child: CustomText(
                      text: " Resend again",
                      fontColor: Color(0xff1D69A6),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

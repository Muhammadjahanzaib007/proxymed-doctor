import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Custom Widget/CustomTextFormFiled/CustomTextFormFiled.dart';
import '../../Custom Widget/button.dart';
import '../../Custom Widget/custom_text.dart';
import '../Forgot Password OTP/ForgotPasswordOTP.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Padding(
      padding: EdgeInsets.only(bottom: mediaQueryData.viewInsets.bottom),
      child: SizedBox(
        height: 390.h,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.only(
            left: 20.w,
            right: 20.w,
            top: 20.h,
          ),
          child: SingleChildScrollView(
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
                  child: const CustomText(
                    text: "Forgot password",
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                  ),
                ),
                const CustomText(
                    text: "Enter your email for the verification proccesss\n"
                        "we will send 4 digits code to your email.",
                    fontSize: 14,
                    fontColor: Color(0xff677294)),
                SizedBox(
                  height: 36.h,
                ),
                const CustomTextFormFiled(
                  hintText: "Email",
                  textAlign: TextAlign.start,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30.h),
                  child: MyCustomButton(
                      text: "Continue",
                      onPressed: () {
                        Navigator.pop(context);
                        showModalBottomSheet(
                            isDismissible: false,
                            enableDrag: false,
                            context: context,
                            isScrollControlled: true,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30))),
                            builder: (context) => const SingleChildScrollView(
                                child: ForgotPasswordOTP()));
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

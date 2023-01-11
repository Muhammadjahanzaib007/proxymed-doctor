import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:validators/validators.dart';
import '../../Controllers/auth_controller.dart';
import '../../Custom Widget/CustomTextFormFiled/CustomTextFormFiled.dart';
import '../../Custom Widget/button.dart';
import '../../Custom Widget/custom_text.dart';
import '../../CustomContainer/CustomContainer.dart';
import '../Forgot Password/ForgotPassword.dart';
import '../Navigation Bar/navigationbar.dart';
import '../Sign Up Screen/signup_screen.dart';
import '../Sign Up Screen/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isCorrect = false;
  bool showLoading = false;
  var auth = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return showLoading
        ? const SpinKitSpinningLines(
            color: Color(0xffE76880),
          )
        : CustomContainer(
            widget: Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: Colors.transparent,
              body: SingleChildScrollView(
                  child: AnimatedPadding(
                padding:
                    EdgeInsets.only(left: 20.0.w, right: 20.0.w, top: 127.h),
                duration: const Duration(seconds: 100),
                child: Column(
                  children: [
                    const CustomText(
                      text: "Welcome back",
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0.h, bottom: 45.h),
                      child: SizedBox(
                        width: double.infinity,
                        height: 40.h,
                        child: const CustomText(
                          text:
                              "Lorem Ipsum is simply dummy text of the printing"
                              " and typesetting industry.",
                          textAlign: TextAlign.center,
                          //maxLines: 2,
                          fontColor: Color(0xff677294),
                          fontSize: 14,
                        ),
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: const Color(0xffE76880),
                      controller: auth.emailCont,
                      onChanged: (val) {
                        setState(() {
                          isCorrect = isEmail(val);
                        });
                      },
                      decoration: InputDecoration(
                          suffixIcon: isCorrect == true
                              ? const Icon(
                                  Icons.check,
                                  color: Color(0xff677294),
                                )
                              : null,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color:
                                    const Color(0xff677294).withOpacity(0.16),
                              )),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: const Color(0xff677294).withOpacity(0.16),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: const Color(0xff677294).withOpacity(0.16),
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 4.h, horizontal: 20.w),
                          hintText: "Enter your Email",
                          hintStyle: TextStyle(
                              fontFamily: "Rubik",
                              color: const Color(0xff677294),
                              fontWeight: FontWeight.w300,
                              fontSize: 16.sp)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 18.0.h, bottom: 32.h),
                      child: CustomTextFormFiledPassword(
                        hintText: 'Enter your Password',
                        controller: auth.passCont,
                      ),
                    ),
                    MyCustomButton(
                        height: 54.h,
                        width: double.infinity.w,
                        buttonColor: Color(0xffE76880),
                        text: "Login",
                        textColor: Color(0xffFFFFFF),
                        fontSize: 18.sp,
                        onPressed: () async {
                          setState(() {
                            showLoading = true;
                          });
                          await auth.login();
                        }),
                    SizedBox(
                      height: 20.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        ForgotPassword(context);
                      },
                      child: CustomText(
                        text: "Forgot password",
                        fontColor: Color(0xff96CCD5),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 80.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          text: "Don’t have an account? ",
                          fontColor: Color(0xff96CCD5),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        GestureDetector(
                            child: CustomText(
                              text: "Join us",
                              fontColor: Color(0xff96CCD5),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                            onTap: () {
                              SignupScreen();
                            }),
                      ],
                    ),
                  ],
                ),
              )),
            ),
          );
  }
}

/*   ForgotPassword */

Future<dynamic> ForgotPassword(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding:
              EdgeInsets.only(left: 0, right: 0, top: 207.h, bottom: 0.h).r,
          backgroundColor: Colors.transparent,
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Container(
                child: Container(
                  width: double.infinity.w,
                  height: 380.h,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0.r),
                        topRight: Radius.circular(30.0.r),
                      ),
                    ),
                    color: Color(0xffFFFFFF),
                    child: Container(
                      padding: EdgeInsets.only(left: 20, right: 20).r,
                      child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 20.h,
                            ),
                            Container(
                              height: 5.h,
                              width: 130.w,
                              color: Color(0xffC4C4C4),
                            ),
                            SizedBox(
                              height: 50.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: "Forgot password",
                                  textAlign: TextAlign.left,
                                  fontColor: Color(0xff000000),
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Text(
                              "Enter your email for the verification proccesss,\nwe will send 4 digits code to your email.",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  height: 1.9,
                                  fontSize: 14,
                                  color: Color(0xff677294),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Rubik"),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            Container(
                              height: 54.h,
                              width: double.maxFinite.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    width: 1,
                                    color: Color.fromRGBO(103, 114, 148, 0.16)),
                                borderRadius: BorderRadius.circular(10.0.r),
                              ),
                              child: TextField(
                                cursorColor: const Color(0xffC0C0C0),
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  contentPadding: EdgeInsets.only(
                                      left: 20, bottom: 10, top: 25),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10.0.r),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius:
                                          BorderRadius.circular(10.0.r)),
                                  hintText: "Email",
                                  hintStyle: const TextStyle(
                                    color: Color(0xff677294),
                                    fontFamily: 'Rubik',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            Container(
                              height: 54.h,
                              width: double.infinity.w,
                              child: MyCustomButton(
                                onPressed: () {
                                  Get.to(VerificationCode(context));
                                },
                                height: 54.h,
                                width: double.infinity.w,
                                buttonColor: Color(0xffE76880),
                                text: "Continue",
                                textColor: Color(0xffFFFFFF),
                                fontSize: 18.sp,
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

/*     VerificationCode   */

Future<dynamic> VerificationCode(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding:
              EdgeInsets.only(left: 0, right: 0, top: 207.h, bottom: 0).r,
          backgroundColor: Colors.transparent,
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Container(
                child: Container(
                  width: double.infinity.w,
                  height: 380.h,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0.r),
                        topRight: Radius.circular(30.0.r),
                      ),
                    ),
                    color: Color(0xffFFFFFF),
                    child: Container(
                      padding: EdgeInsets.only(left: 20, right: 20).r,
                      child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 20.h,
                            ),
                            Container(
                              height: 5.h,
                              width: 130.w,
                              color: Color(0xffC4C4C4),
                            ),
                            SizedBox(
                              height: 50.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: "Enter 4 Digits Code",
                                  textAlign: TextAlign.left,
                                  fontColor: Color(0xff000000),
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12.h,
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
                              height: 30.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 54.h,
                                  width: 54.w,
                                  child: TextField(
                                    style: TextStyle(
                                        fontSize: 26.sp,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Rubik",
                                        color: const Color(0xff96CCD5)),
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 17, vertical: 4.h),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: const Color(0xff677294)
                                              .withOpacity(.16),
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: const Color(0xff677294)
                                              .withOpacity(.16),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 54.h,
                                  width: 54.w,
                                  child: TextField(
                                    style: TextStyle(
                                        fontSize: 26.sp,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Rubik",
                                        color: const Color(0xff96CCD5)),
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 17, vertical: 4.h),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: const Color(0xff677294)
                                              .withOpacity(.16),
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: const Color(0xff677294)
                                              .withOpacity(.16),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 54.h,
                                  width: 54.w,
                                  child: TextField(
                                    style: TextStyle(
                                        fontSize: 26.sp,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Rubik",
                                        color: const Color(0xff96CCD5)),
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 17, vertical: 4.h),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: const Color(0xff677294)
                                              .withOpacity(.16),
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: const Color(0xff677294)
                                              .withOpacity(.16),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 54.h,
                                  width: 54.w,
                                  child: TextField(
                                    style: TextStyle(
                                        fontSize: 26.sp,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Rubik",
                                        color: const Color(0xff96CCD5)),
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 17, vertical: 4.h),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: const Color(0xff677294)
                                              .withOpacity(.16),
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: const Color(0xff677294)
                                              .withOpacity(.16),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            Container(
                              height: 54.h,
                              width: double.infinity.w,
                              child: MyCustomButton(
                                onPressed: () {
                                  Get.to(ResetPassword(context));
                                },
                                height: 54.h,
                                width: double.infinity.w,
                                buttonColor: Color(0xffE76880),
                                text: "Continue",
                                textColor: Color(0xffFFFFFF),
                                fontSize: 18.sp,
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
/*     Reset Password   */

Future<dynamic> ResetPassword(BuildContext context) {
  bool _isObscure = true;
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding:
              EdgeInsets.only(left: 0, right: 0, top: 127.h, bottom: 0).r,
          backgroundColor: Colors.transparent,
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Container(
                child: Container(
                  width: double.infinity.w,
                  height: 460.h,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0.r),
                        topRight: Radius.circular(30.0.r),
                      ),
                    ),
                    color: Color(0xffFFFFFF),
                    child: Container(
                      padding: EdgeInsets.only(left: 20, right: 20).r,
                      child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 20.h,
                            ),
                            Container(
                              height: 5.h,
                              width: 130.w,
                              color: Color(0xffC4C4C4),
                            ),
                            SizedBox(
                              height: 50.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: "Reset Password",
                                  textAlign: TextAlign.left,
                                  fontColor: Color(0xff000000),
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Text(
                              "Set the new password for your account so you\ncan login and access all the features.",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  height: 1.9,
                                  fontSize: 14,
                                  color: Color(0xff677294),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Rubik"),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            Container(
                              height: 54.h,
                              width: double.maxFinite.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    width: 1,
                                    color: Color.fromRGBO(103, 114, 148, 0.16)),
                                borderRadius: BorderRadius.circular(10.0.r),
                              ),
                              child: TextField(
                                obscureText: _isObscure,
                                cursorColor: const Color(0xffC0C0C0),
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _isObscure
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Color(0xff677294),
                                    ),
                                    onPressed: () {
                                      // setState(() {
                                      //   _isObscure = !_isObscure;
                                      // });
                                    },
                                  ),
                                  contentPadding: EdgeInsets.only(
                                      left: 20, bottom: 10, top: 25),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10.0.r),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius:
                                          BorderRadius.circular(10.0.r)),
                                  hintText: "New Password",
                                  hintStyle: const TextStyle(
                                    color: Color(0xff677294),
                                    fontFamily: 'Rubik',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Container(
                              height: 54.h,
                              width: double.maxFinite.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    width: 1,
                                    color: Color.fromRGBO(103, 114, 148, 0.16)),
                                borderRadius: BorderRadius.circular(10.0.r),
                              ),
                              child: TextField(
                                obscureText: _isObscure,
                                cursorColor: const Color(0xffC0C0C0),
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _isObscure
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Color(0xff677294),
                                    ),
                                    onPressed: () {
                                      // setState(() {
                                      //   _isObscure = !_isObscure;
                                      // });
                                    },
                                  ),
                                  contentPadding: EdgeInsets.only(
                                      left: 20, bottom: 10, top: 25),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10.0.r),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius:
                                          BorderRadius.circular(10.0.r)),
                                  hintText: "Re-enter Password",
                                  hintStyle: const TextStyle(
                                    color: Color(0xff677294),
                                    fontFamily: 'Rubik',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            Container(
                              height: 54.h,
                              width: double.infinity.w,
                              child: MyCustomButton(
                                onPressed: () {
                                  Get.to(Navigationbar());
                                },
                                height: 54.h,
                                width: double.infinity.w,
                                buttonColor: Color(0xffE76880),
                                text: "Update Password",
                                textColor: Color(0xffFFFFFF),
                                fontSize: 18.sp,
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

void setState(Null Function() param0) {}

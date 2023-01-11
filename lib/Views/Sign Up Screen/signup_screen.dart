import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Controllers/auth_controller.dart';
import '../../Custom Widget/button.dart';
import '../../Custom Widget/custom_text.dart';
import '../../CustomContainer/CustomContainer.dart';
import '../LoginScreen/LoginScreen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _isObscure = true;
  bool isSelected = false;
  bool isOn = false;
  var auth = Get.find<AuthController>();
  bool showLoading = false;
  @override
  Widget build(BuildContext context) {
    return showLoading
        ? const SpinKitSpinningLines(
            color: Color(0xffE76880),
          )
        : CustomContainer(
            widget: Scaffold(
              body: SingleChildScrollView(
                child: SafeArea(
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 20, right: 20, top: 50, bottom: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              text: "Join us to start searching",
                              textAlign: TextAlign.center,
                              fontColor: Color(0xff000000),
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        CustomText(
                          text:
                              "Lorem Ipsum is simply dummy text of the printing\nand typesetting industry.",
                          textAlign: TextAlign.center,
                          fontColor: Color(0xff677294),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
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
                            controller: auth.nameCont,
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
                                  borderRadius: BorderRadius.circular(10.0.r)),
                              hintText: "Name",
                              hintStyle: TextStyle(
                                color: Color(0xff677294),
                                fontFamily: 'Rubik',
                                fontSize: 16.sp,
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
                            controller: auth.emailCont,
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
                                  borderRadius: BorderRadius.circular(10.0.r)),
                              hintText: "Email",
                              hintStyle: TextStyle(
                                color: Color(0xff677294),
                                fontFamily: 'Rubik',
                                fontSize: 16.sp,
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
                            controller: auth.passCont,
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
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
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
                                  borderRadius: BorderRadius.circular(10.0.r)),
                              hintText: "Password",
                              hintStyle: TextStyle(
                                color: Color(0xff677294),
                                fontFamily: 'Rubik',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: isOn,
                                activeColor: const Color(0xffE76880),
                                onChanged: (value) {
                                  setState(() {
                                    isOn = value!;
                                  });
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                            const CustomText(
                              text:
                                  "I agree with the Terms of Service & Privacy Policy",
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              fontColor: Color(0xff677294),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        Container(
                          height: 54.h,
                          width: double.infinity.w,
                          child: MyCustomButton(
                            height: 54.h,
                            width: double.infinity.w,
                            buttonColor: Color(0xffE76880),
                            text: "Sign up",
                            textColor: Color(0xffFFFFFF),
                            fontSize: 18.sp,
                            onPressed: () async {
                              await auth.signUp();
                            }
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
                              onTap: () async {
                                setState(() {
                                  showLoading = true;
                                });
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginScreen()));
                              },
                              child: CustomText(
                                text: " Log in",
                                fontColor: Color(0xff96CCD5),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}

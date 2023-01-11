import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Custom Widget/button.dart';
import '../../Custom Widget/custom_text.dart';
import '../../CustomContainer/CustomContainer.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool show = true;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      widget: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          backgroundColor: const Color(0xff96CCD5),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
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
          title: const CustomText(
            text: "Change Password",
            fontColor: Color(0xffFFFFFF),
            fontWeight: FontWeight.w700,
          ),
          bottom: PreferredSize(
            preferredSize: Size(double.infinity, 110.h),
            child: Padding(
              padding: EdgeInsets.only(bottom: 60.0.h),
              child: const CustomText(
                text: "Update your password",
                fontColor: Color(0xffFFFFFF),
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(
                text: "Change Pasword",
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 12.h,
              ),
              Container(
                height: 60.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xffFFFFFF),
                ),
                child: TextFormField(
                  obscureText: show,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 9.h),
                    labelText: "Current Password",
                    labelStyle: TextStyle(
                        fontFamily: "Rubik",
                        color: const Color(0xff96CCD5),
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          show = !show;
                        });
                      },
                      icon: Icon(show == false
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0.h),
                child: Container(
                  height: 60.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xffFFFFFF),
                  ),
                  child: TextFormField(
                    obscureText: show,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20.w, vertical: 9.h),
                      labelText: "New Password",
                      labelStyle: TextStyle(
                          fontFamily: "Rubik",
                          color: const Color(0xff96CCD5),
                          fontWeight: FontWeight.w500,
                          fontSize: 15.sp),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            show = !show;
                          });
                        },
                        icon: Icon(show == false
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Container(
                height: 60.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xffFFFFFF),
                ),
                child: TextFormField(
                  obscureText: show,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 9.h),
                    labelText: "Confirmed Password",
                    labelStyle: TextStyle(
                        fontFamily: "Rubik",
                        color: const Color(0xff96CCD5),
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          show = !show;
                        });
                      },
                      icon: Icon(show == false
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ),
                    border: InputBorder.none,
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
                    // Get.to(SplashScreen());
                  },
                  height: 54.h,
                  width: double.infinity.w,
                  buttonColor: Color(0xffE76880),
                  text: "Continue",
                  textColor: Color(0xffFFFFFF),
                  fontSize: 14.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

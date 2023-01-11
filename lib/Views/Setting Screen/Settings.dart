import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Custom Widget/custom_text.dart';
import '../../CustomContainer/CustomContainer.dart';
import '../ChangePassword/ChangePassword.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      widget: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10.w,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
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
                    SizedBox(
                      width: 20.w,
                    ),
                    CustomText(
                      text: "Settings",
                      fontColor: Color(0xff333333),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.3,
                    )
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: 30.0.h, left: 15.w, bottom: 10.h),
                  child: CustomText(
                    text: "Account settings",
                    fontColor: Color(0xff677294),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.3,
                  ),
                ),
                returnListTile("Change Password", "assets/images/Lock Icon.png",
                    0xffEB5757, () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChangePassword()));
                }),
                SizedBox(
                  height: 10.w,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: const Divider(
                    color: Color(0xff96CCD5),
                  ),
                ),
                SizedBox(
                  height: 10.w,
                ),
                returnListTile("Notifications",
                    "assets/images/Notifications.png", 0xff219653, () {}),
                SizedBox(
                  height: 10.w,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: const Divider(
                    color: Color(0xff96CCD5),
                  ),
                ),
                SizedBox(
                  height: 10.w,
                ),
                returnListTile("About us", "assets/images/About Icon.png",
                    0xffF2994A, () {}),
                SizedBox(
                  height: 10.w,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: const Divider(
                    color: Color(0xff96CCD5),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: CustomText(
                    text: "More options",
                    fontColor: Color(0xff677294),
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: SizedBox(
                    height: 40.h,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: "Languages",
                          fontColor: Color(0xff677294),
                          fontWeight: FontWeight.w300,
                          fontSize: 16.sp,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Row(
                            children: const [
                              CustomText(
                                text: "English",
                                fontColor: Color(0xff677294),
                                fontWeight: FontWeight.w300,
                                fontSize: 16,
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Color(0xffC0C2C1),
                                size: 18,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ListTile returnListTile(
      String text, String image, int color, VoidCallback onPressed) {
    return ListTile(
      onTap: onPressed,
      leading: Container(
          height: 30.h,
          width: 30.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color(color)),
          child: Center(child: Image.asset(image))),
      title: Row(
        children: [
          CustomText(
            text: text,
            fontColor: const Color(0xff677294),
            fontWeight: FontWeight.w300,
            fontSize: 16.sp,
          ),
        ],
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        color: Color(0xffC0C2C1),
        size: 18,
      ),
      dense: true,
      visualDensity: const VisualDensity(horizontal: -4, vertical: -3),
    );
  }
}

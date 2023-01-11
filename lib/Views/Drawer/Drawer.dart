import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Custom Widget/custom_text.dart';
import '../Medical Record/Medical Record.dart';
import '../My Doctor Screen/My Doctor.dart';
import '../Profile  Screen/Profile.dart';
import '../Setting Screen/Settings.dart';
class DrawerNavigation extends StatefulWidget {
  const DrawerNavigation({Key? key}) : super(key: key);

  @override
  State<DrawerNavigation> createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 284.w,
      child: Drawer(
        backgroundColor: const Color(0xff96CCD5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 180.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xff81A5AB).withOpacity(.33),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 30.w, top: 35.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        radius: 35,
                        backgroundImage:
                            AssetImage("assets/images/Profile Drawer.png"),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomText(
                        text: "Waqas",
                        fontColor: const Color(0xffFFFFFF),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.phone,
                            color: Color(0xffFFFFFF),
                            size: 15.sp,
                          ),
                          CustomText(
                            text: "+92 301 5384952",
                            fontColor: const Color(0xffFFFFFF),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23, top: 26),
                child: Column(
                  children: [
                    customListTile("assets/images/Person.png", "Profile", () {
                      Get.to(ProfileEdit());
                    }),
                    customListTile(
                        "assets/images/Doctor Icon.png", "My Doctors", () {
                      Get.to(MyDoctor());
                    }),
                    customListTile(
                        "assets/images/Heart.png", "Favourite", () {}),
                    customListTile("assets/images/Medical Record Icon.png",
                        "Medical Records", () {
                      Get.to(MedicalRecord());
                    }),
                    customListTile(
                        "assets/images/Privacy.png", "Privacy & Policy", () {}),
                    customListTile(
                        "assets/images/Help.png", "Help Center", () {}),
                    customListTile("assets/images/Setting.png", "Settings", () {
                      Get.to(Settings());
                    }),
                    SizedBox(
                      height: 70.h,
                    ),
                    ListTile(
                      onTap: () {
                        Get.to(Logout(context));
                      },
                      leading: Image.asset(
                        "assets/images/Logout.png",
                        height: 20.h,
                        width: 20.w,
                      ),
                      title: const CustomText(
                        text: "Logout",
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        fontColor: Color(0xffFFFFFF),
                      ),
                      dense: true,
                      visualDensity:
                          const VisualDensity(horizontal: -4, vertical: -1),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ListTile customListTile(
          String imageIcon, String textTitle, VoidCallback yourOnTap) =>
      ListTile(
        onTap: yourOnTap,
        leading: Image.asset(
          imageIcon,
          height: 20.h,
          width: 20.w,
        ),
        title: CustomText(
          text: textTitle,
          fontColor: const Color(0xffFFFFFF),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios_rounded,
          color: Color(0xffFFFFFF),
          size: 18,
        ),
        dense: true,
        visualDensity: const VisualDensity(horizontal: -4, vertical: -1),
      );
}

//   Log Out

Future<dynamic> Logout(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding:
              EdgeInsets.only(left: 20.w, right: 20.w, top: 0.h, bottom: 0.h).r,
          backgroundColor: Color(0xff000000).withOpacity(0.50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  width: double.infinity.w,
                  height: 167.h,
                  child: Card(
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    color: Color(0xffFFFFFF),
                    child: Container(
                      padding: EdgeInsets.only(left: 28.w, right: 38.w).r,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 24.h,
                            ),
                            CustomText(
                              text: "Log Out",
                              textAlign: TextAlign.left,
                              fontColor: Color(0xff000000),
                              fontSize: 26.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            CustomText(
                              text: "Are you sure you want to logout?",
                              textAlign: TextAlign.left,
                              fontColor: Color(0xff677294),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),
                            SizedBox(
                              height: 34.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomText(
                                  text: "Cancel",
                                  fontColor: Color(0xff96CCD5),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                                SizedBox(
                                  width: 30.h,
                                ),
                                CustomText(
                                  text: "Ok",
                                  fontColor: Color(0xff96CCD5),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
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

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Custom Widget/button.dart';
import '../../Custom Widget/custom_text.dart';
import '../../CustomContainer/CustomContainer.dart';
import '../Add Record Screen/add Record.dart';

class MedicalRecord extends StatefulWidget {
  const MedicalRecord({Key? key}) : super(key: key);

  @override
  State<MedicalRecord> createState() => _MedicalRecordState();
}

class _MedicalRecordState extends State<MedicalRecord> {
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
          title: CustomText(
            text: "Medical Records",
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
                  "assets/images/Medical Reocrd.png",
                  height: 214,
                  width: 214,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: 40.h,
                ),
                CustomText(
                  text: "Add a medical record.",
                  fontWeight: FontWeight.w700,
                  fontSize: 20.sp,
                  fontColor: Color(0xff222222),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 19.h, bottom: 30.h),
                  child: CustomText(
                    text: "A detailed health history helps a doctor diagnose"
                        " you better.",
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
                      Get.to(addrecord(context));
                    },
                    height: 54.h,
                    width: double.infinity.w,
                    buttonColor: Color(0xffE76880),
                    text: "Add a record",
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

Future<dynamic> addrecord(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding:
              EdgeInsets.only(left: 0, right: 0, top: 326.h, bottom: 0).r,
          backgroundColor: Colors.transparent,
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Container(
                child: Container(
                  width: double.infinity.w,
                  height: 260.h,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0.r),
                        topRight: Radius.circular(30.0.r),
                      ),
                    ),
                    color: Color(0xffFFFFFF),
                    child: Container(
                      padding: EdgeInsets.only(left: 20.w, right: 20.w).r,
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
                              height: 25.h,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomText(
                                    text: "Add a record",
                                    fontSize: 22.sp,
                                    fontWeight: FontWeight.w500,
                                    fontColor: Color(0xff000000),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 25.h,
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(AddRecord());
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.camera_alt,
                                    color: Color(0xff677294),
                                  ),
                                  SizedBox(
                                    width: 13.w,
                                  ),
                                  CustomText(
                                    text: "Take a photo",
                                    fontColor: Color(0xff677294),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: -0.3,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(AddRecord());
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.photo,
                                    color: Color(0xff677294),
                                  ),
                                  SizedBox(
                                    width: 13.w,
                                  ),
                                  CustomText(
                                    text: "Upload from gallery",
                                    fontColor: Color(0xff677294),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: -0.3,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(AddRecord());
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.upload_file_outlined,
                                    color: Color(0xff677294),
                                  ),
                                  SizedBox(
                                    width: 13.w,
                                  ),
                                  CustomText(
                                    text: "Upload Files",
                                    fontColor: Color(0xff677294),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: -0.3,
                                  ),
                                ],
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

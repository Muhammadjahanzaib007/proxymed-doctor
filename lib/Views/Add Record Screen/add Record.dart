import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Custom Widget/button.dart';
import '../../Custom Widget/custom_text.dart';
import '../../CustomContainer/CustomContainer.dart';
import '../All Records Screen/All Records.dart';
import '../Prescription/Prescription.dart';

class AddRecord extends StatefulWidget {
  const AddRecord({Key? key}) : super(key: key);

  @override
  State<AddRecord> createState() => _AddRecordState();
}

class _AddRecordState extends State<AddRecord> {
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      widget: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          titleSpacing: 0,
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Container(
            padding: EdgeInsets.only(
              left: 20.w,
              right: 20.w,
            ),
            child: Row(
              children: [
                Container(
                  height: 30.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(10.0.r),
                  ),
                  child: Center(
                      child: GestureDetector(
                    onTap: () {
                      //Get.off();
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Color(0xff677294),
                      size: 13,
                    ),
                  )),
                ),
                SizedBox(
                  width: 20,
                ),
                CustomText(
                  text: "Add Records",
                  fontColor: Color(0xff333333),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.3,
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(children: [
                SizedBox(
                  height: 20.w,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/AddRecord.png",
                        height: 100.h,
                        width: 125.w,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                        width: 16.h,
                      ),
                      Container(
                        height: 100.h,
                        width: 125.w,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(150, 204, 213, 0.2),
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.add,
                              color: Color(0xff96CCD5),
                              size: 50,
                            ),
                            CustomText(
                              text: "Add more\nimages",
                              textAlign: TextAlign.center,
                              fontColor: Color(0xff96CCD5),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.w,
                ),
                Container(
                  height: 455.h,
                  width: 375.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                      bottomLeft: Radius.zero,
                      bottomRight: Radius.zero,
                    ),
                    border: Border.all(width: 1, color: Color(0xffFFFFFF)),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 0),
                        blurRadius: 4.0,
                        color: Color.fromRGBO(0, 0, 0, 0.20),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "Record for",
                          textAlign: TextAlign.center,
                          fontColor: Color(0xff000000),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        SizedBox(
                          height: 50.h,
                          child: TextField(
                            cursorColor: Color.fromRGBO(140, 143, 165, 0.38),
                            decoration: InputDecoration(
                              fillColor: Colors.transparent,
                              filled: true,
                              contentPadding: EdgeInsets.only(top: 10.h),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Color.fromRGBO(0, 0, 0, 0.1)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Color.fromRGBO(0, 0, 0, 0.1)),
                              ),
                              hintText: "Abdullah Mamun",
                              hintStyle: TextStyle(
                                color: Color(0xff96CCD5),
                                fontFamily: 'Rubik',
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500,
                              ),
                              suffixIcon: Padding(
                                padding:
                                    EdgeInsets.only(bottom: 25.h, left: 40.w),
                                child: Icon(
                                  FontAwesomeIcons.pencil,
                                  color: Color(0xff677294),
                                  size: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        CustomText(
                          text: "Type of record",
                          textAlign: TextAlign.center,
                          fontColor: Color(0xff000000),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Image.asset("assets/images/report.png"),
                                CustomText(
                                  text: "Report",
                                  textAlign: TextAlign.center,
                                  fontColor: Color(0xff677294),
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 46.h,
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(Prescription());
                              },
                              child: Column(
                                children: [
                                  Image.asset("assets/images/Prescription.png"),
                                  CustomText(
                                    text: "Prescription",
                                    textAlign: TextAlign.center,
                                    fontColor: Color(0xff96CCD5),
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Divider(
                          color: Color.fromRGBO(0, 0, 0, 0.1),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        CustomText(
                          text: "Record created on",
                          textAlign: TextAlign.center,
                          fontColor: Color(0xff000000),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        SizedBox(
                          height: 50.h,
                          child: TextField(
                            cursorColor: Color.fromRGBO(140, 143, 165, 0.38),
                            decoration: InputDecoration(
                              fillColor: Colors.transparent,
                              filled: true,
                              contentPadding: EdgeInsets.only(top: 10.h),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Color.fromRGBO(0, 0, 0, 0.1)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Color.fromRGBO(0, 0, 0, 0.1)),
                              ),
                              hintText: "27 Feb, 2021",
                              hintStyle: TextStyle(
                                color: Color(0xff96CCD5),
                                fontFamily: 'Rubik',
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500,
                              ),
                              suffixIcon: Padding(
                                padding:
                                    EdgeInsets.only(bottom: 25.h, left: 40.w),
                                child: Icon(
                                  FontAwesomeIcons.pencil,
                                  color: Color(0xff677294),
                                  size: 15,
                                ),
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
                              Get.to(AllRecords());
                            },
                            height: 54.h,
                            width: double.infinity.w,
                            buttonColor: Color(0xffE76880),
                            text: "Upload record",
                            textColor: Color(0xffFFFFFF),
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

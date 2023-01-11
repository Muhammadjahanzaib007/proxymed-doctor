import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Custom Widget/button.dart';
import '../../Custom Widget/custom_text.dart';
import '../../CustomContainer/CustomContainer.dart';
import '../Add Record Screen/add Record.dart';
import '../All Records Screen/All Records.dart';
import '../Prescription/Prescription.dart';
import '../VideoCall/VideoCall.dart';

class AppointmentDetails extends StatefulWidget {
  const AppointmentDetails({Key? key}) : super(key: key);

  @override
  State<AppointmentDetails> createState() => _AppointmentDetailsState();
}

class _AppointmentDetailsState extends State<AppointmentDetails> {
  bool selected = true;
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
          padding: EdgeInsets.only(left: 20.w),
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
                text: "Appointment Detail",
                textAlign: TextAlign.left,
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
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.0.w, right: 20.w, top: 10.h),
                child: Container(
                  color: Colors.transparent,
                  height: 425.h,
                  width: double.infinity,
                  child: Card(
                    elevation: 0.0,
                    child: Container(
                      height: 425.h,
                      width: double.infinity.w,
                      padding: EdgeInsets.only(
                          left: 14.w, top: 14.h, bottom: 14.h, right: 14.w),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(width: 1, color: Color(0xffFFFFFF)),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 0),
                            blurRadius: 5.0,
                            color: Color(0xff000000).withOpacity(0.20),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/images/Dr. Pediatrician1.png",
                                    width: 92.w,
                                    height: 115.h,
                                  ),
                                  SizedBox(
                                    width: 10.h,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomText(
                                        text: "Dr. Pediatrician",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18.sp,
                                        fontColor: Color(0xff333333),
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      SizedBox(
                                        width: 146.w,
                                        height: 26.h,
                                        child: Text(
                                          "Urologist, Kidney Surgeon, Peadiatric Urologist",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "PTSans",
                                              color: Color(0xffE76880),
                                              letterSpacing: -0.3),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text(
                                        "MBBS ,FCPS (Urology)",
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "PTSans",
                                            color: Color(0xff96CCD5),
                                            letterSpacing: -0.3),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {});
                                },
                                child: Icon(
                                  FontAwesomeIcons.ellipsisVertical,
                                  color: Color(0xff677294),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Divider(
                            color: Color(0xff000000).withOpacity(0.25),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(
                                    text: "Patient Name",
                                    fontWeight: FontWeight.w300,
                                    fontSize: 14.sp,
                                    fontColor: Color(0xff677294),
                                    letterSpacing: -0.3,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 70.w),
                                    child: CustomText(
                                      text: "Fee",
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14.sp,
                                      fontColor: Color(0xff677294),
                                      letterSpacing: -0.3,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(
                                    text: "Waqas",
                                    fontWeight: FontWeight.w300,
                                    fontSize: 14.sp,
                                    fontColor: Color(0xff677294),
                                    letterSpacing: -0.3,
                                  ),
                                  Row(
                                    children: [
                                      CustomText(
                                        text: "TND ",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp,
                                        fontColor: Color(0xff333333),
                                        letterSpacing: -0.3,
                                      ),
                                      CustomText(
                                        text: "40.000 ",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp,
                                        fontColor:
                                            Color.fromRGBO(103, 114, 148, 0.9),
                                        letterSpacing: -0.3,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              CustomText(
                                text: "Appointment time",
                                fontWeight: FontWeight.w300,
                                fontSize: 14.sp,
                                fontColor: Color(0xff677294),
                                letterSpacing: -0.3,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              CustomText(
                                text: "2022-09-26  01:00pm",
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                fontColor: Color(0xff677294),
                                letterSpacing: -0.3,
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(
                                    text: "Type of Consultation",
                                    fontWeight: FontWeight.w300,
                                    fontSize: 14.sp,
                                    fontColor: Color(0xff677294),
                                    letterSpacing: -0.3,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 30.w),
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Image.asset(
                                        "assets/images/Prescription.png",
                                        width: 18.w,
                                        height: 23.h,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(
                                    text: "Join video consultation",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.sp,
                                    fontColor: Color(0xff677294),
                                    letterSpacing: -0.3,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Get.to(Prescription());
                                    },
                                    child: CustomText(
                                      text: "Prescription",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13.sp,
                                      fontColor: Color(0xff96CCD5),
                                      letterSpacing: -0.3,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.to(VideoCall());
                                },
                                child: Container(
                                  padding: EdgeInsets.all(10.0),
                                  height: 52.h,
                                  width: 130.w,
                                  decoration: BoxDecoration(
                                    color: Color(0xffE76880),
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 33.h,
                                        width: 33.w,
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(7.0.r),
                                        ),
                                        child: Center(
                                            child: Icon(
                                          Icons.videocam,
                                          color: Color(0xffE76880),
                                          size: 22,
                                        )),
                                      ),
                                      SizedBox(
                                        width: 9.w,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 2.h),
                                            child: SizedBox(
                                              width: 51.w,
                                              child: CustomText(
                                                text: "Consult Doctor",
                                                fontWeight: FontWeight.w600,
                                                fontSize: 13.sp,
                                                fontColor: Color(0xffFFFFFF),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.to(VideoCall());
                                },
                                child: Container(
                                  padding: EdgeInsets.all(10.0),
                                  height: 52.h,
                                  width: 130.w,
                                  decoration: BoxDecoration(
                                    color: Color(0xffE76880),
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 33.h,
                                        width: 33.w,
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(7.0.r),
                                        ),
                                        child: Center(
                                            child: Icon(
                                          Icons.videocam,
                                          color: Color(0xffE76880),
                                          size: 22,
                                        )),
                                      ),
                                      SizedBox(
                                        width: 9.w,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 2.h),
                                            child: SizedBox(
                                              width: 51.w,
                                              child: CustomText(
                                                text: "Consult  Nurse",
                                                fontWeight: FontWeight.w600,
                                                fontSize: 13.sp,
                                                fontColor: Color(0xffFFFFFF),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
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
              SizedBox(
                height: 20.h,
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 20.0.w,
                  right: 20.w,
                ),
                color: Colors.transparent,
                height: 415.h,
                width: double.infinity,
                child: Card(
                  elevation: 0.0,
                  child: Container(
                    height: 415.h,
                    width: double.infinity.w,
                    padding: EdgeInsets.only(
                        left: 14.w, top: 14.h, bottom: 14.h, right: 14.w),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(width: 1, color: Color(0xffFFFFFF)),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 0),
                          blurRadius: 5.0,
                          color: Color(0xff000000).withOpacity(0.20),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: "Add a medical record.",
                              fontWeight: FontWeight.w500,
                              fontSize: 13.sp,
                              fontColor: Color(0xff222222),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(AllRecords());
                              },
                              child: Column(
                                children: [
                                  Container(
                                    height: 17.h,
                                    width: 150.w,
                                    child: CustomText(
                                      text: "Share Previous record",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp,
                                      fontColor: Color(0xffE76880),
                                    ),
                                  ),
                                  Container(
                                    height: 1.h,
                                    width: 150.w,
                                    color: Color(0xffE76880),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        CustomText(
                          text:
                              "A detailed health history helps a doctor diagnose you btter.",
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          fontColor: Color(0xff677294),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Center(
                          child: Container(
                            height: 113.h,
                            width: 113.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.0),
                              color: Color(0xffC6EFE5).withOpacity(0.76),
                            ),
                            child: Image.asset(
                              "assets/images/record.png",
                              width: 92.w,
                              height: 115.h,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Container(
                          height: 54.h,
                          width: double.infinity.w,
                          child: MyCustomButton(
                            onPressed: () {
                              Get.to(AddRecord());
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
            ],
          ),
        ),
      ),
    ));
  }
}

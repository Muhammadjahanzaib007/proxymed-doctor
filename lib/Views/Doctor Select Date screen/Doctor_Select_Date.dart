import 'package:flutter/material.dart';
import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Custom Widget/button.dart';
import '../../Custom Widget/custom_text.dart';
import '../../CustomContainer/CustomContainer.dart';
import '../Doctor Appointment Screen/Doctor Appointment.dart';
import '../Message/Message.dart';
import '../VideoCall/VideoCall.dart';
import '../VoiceCall/VoiceCall.dart';
import 'CalendarDate.dart';

class DoctorSelectDate extends StatefulWidget {
  const DoctorSelectDate({Key? key}) : super(key: key);

  @override
  State<DoctorSelectDate> createState() => _DoctorSelectDateState();
}

class _DoctorSelectDateState extends State<DoctorSelectDate> {
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
                text: "Select Time",
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
          child: Padding(
            padding: EdgeInsets.only(
                left: 20.0.w, right: 20.w, bottom: 20.h, top: 20.h),
            child: Column(
              children: [
                Container(
                  color: Colors.transparent,
                  height: 130.h,
                  width: double.infinity,
                  child: Card(
                    elevation: 2.0,
                    child: Container(
                      height: 130.h,
                      width: double.infinity.w,
                      padding: EdgeInsets.only(
                          left: 16.w, top: 16.h, right: 10.w, bottom: 16.h),
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
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/images/Dr. Pediatrician2.png",
                                width: 92.w,
                                height: 87.h,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        height: 21.h,
                                        width: 155.w,
                                        child: CustomText(
                                          text: "Dr. Pediatrician",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18.sp,
                                          fontColor: Color(0xff333333),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          selected = !selected;
                                          setState(() {});
                                        },
                                        child: selected == true
                                            ? const Icon(
                                                Icons.favorite,
                                                color: Colors.red,
                                              )
                                            : const Icon(
                                                Icons.favorite_border,
                                                color: Color(0xff677294),
                                              ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 26.h,
                                    width: 150.w,
                                    child: CustomText(
                                      text: "Specialist Cardiologist ",
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14.sp,
                                      fontColor: Color(0xff677294),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(
                                        width: 89.w,
                                      ),
                                      CustomText(
                                        text: "TND ",
                                        fontWeight: FontWeight.w300,
                                        fontSize: 16.sp,
                                        fontColor: Color(0xff333333),
                                        letterSpacing: -0.3,
                                      ),
                                      CustomText(
                                        text: "40.000 ",
                                        fontWeight: FontWeight.w300,
                                        fontSize: 16.sp,
                                        fontColor:
                                            Color.fromRGBO(103, 114, 148, 0.9),
                                        letterSpacing: -0.3,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                    color: Colors.transparent,
                    height: 300.h,
                    child: CalendarDate()),
                SizedBox(
                  height: 15.h,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(VoiceCall());
                  },
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    height: 54.h,
                    width: double.infinity.w,
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
                            borderRadius: BorderRadius.circular(7.0.r),
                          ),
                          child: Center(
                              child: Icon(
                            FontAwesomeIcons.phone,
                            color: Color(0xffE76880),
                            size: 18,
                          )),
                        ),
                        SizedBox(
                          width: 9.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5.h),
                              child: CustomText(
                                text: "Voice Call",
                                fontWeight: FontWeight.w500,
                                fontSize: 13.sp,
                                fontColor: Color(0xffFFFFFF),
                              ),
                            ),
                            CustomText(
                              text: "Can make voice call with doctor",
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                              fontColor: Color(0xffFFFFFF),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(Message());
                  },
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    height: 54.h,
                    width: double.infinity.w,
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
                            borderRadius: BorderRadius.circular(7.0.r),
                          ),
                          child: Center(
                              child: Icon(
                            FontAwesomeIcons.commentDots,
                            color: Color(0xffE76880),
                            size: 18,
                          )),
                        ),
                        SizedBox(
                          width: 9.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5.h),
                              child: CustomText(
                                text: "Messaging",
                                fontWeight: FontWeight.w500,
                                fontSize: 13.sp,
                                fontColor: Color(0xffFFFFFF),
                              ),
                            ),
                            CustomText(
                              text: "Can message with doctor",
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                              fontColor: Color(0xffFFFFFF),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(VideoCall());
                  },
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    height: 54.h,
                    width: double.infinity.w,
                    decoration: BoxDecoration(
                        color: Color(0xffFFFFF),
                        borderRadius: BorderRadius.circular(10.r),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                            color: Color(0xf000000).withOpacity(0.25),
                          ),
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 33.h,
                          width: 33.w,
                          decoration: BoxDecoration(
                            color: Color(0xffEFEFEF),
                            borderRadius: BorderRadius.circular(7.0.r),
                          ),
                          child: Center(
                              child: Icon(
                            FontAwesomeIcons.phone,
                            color: Color(0xff96CCD5),
                            size: 18,
                          )),
                        ),
                        SizedBox(
                          width: 9.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5.h),
                              child: CustomText(
                                text: "Video Call",
                                fontWeight: FontWeight.w500,
                                fontSize: 13.sp,
                                fontColor: Color(0xff172331),
                              ),
                            ),
                            CustomText(
                              text: "Can make video call with doctor",
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                              fontColor: Color(0xff8C8FA5),
                            ),
                          ],
                        ),
                      ],
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
                      Get.to(DoctorAppointment());
                    },
                    height: 54.h,
                    width: double.infinity.w,
                    buttonColor: Color(0xffE76880),
                    text: "Next",
                    textColor: Color(0xffFFFFFF),
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

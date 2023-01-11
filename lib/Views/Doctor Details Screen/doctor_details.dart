import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:proxymed_doctor/Views/Message/Message.dart';

import '../../Custom Widget/book_now_button.dart';
import '../../Custom Widget/custom_text.dart';
import '../../CustomContainer/CustomContainer.dart';
import '../Doctor Select Date screen/Doctor_Select_Date.dart';
import '../VideoCall/VideoCall.dart';
import '../VoiceCall/VoiceCall.dart';
import 'DoctorAcademics/DoctorAcademics.dart';
import 'DoctorAvailability/DoctorAvailability.dart';
import 'DoctorDetails/DoctorDetails.dart';
import 'DoctorExperience/DoctorExperience.dart';
class DoctorDetailScreen extends StatefulWidget {
  const DoctorDetailScreen({Key? key}) : super(key: key);

  @override
  State<DoctorDetailScreen> createState() => _DoctorDetailScreenState();
}

class _DoctorDetailScreenState extends State<DoctorDetailScreen> {
  int currentSelected = 0;
  List<String> jobsTypes = [
    "Details",
    "Availability",
    "Experience",
    "Academics",
  ];
  List screens = [
    const DoctorDetails(),
    const DoctorAvailability(),
    const DoctorExperience(),
    const DoctorAcademics(),
  ];
  bool selected = true;

  @override
  Widget build(BuildContext context) {
    //TabController tabController = TabController(length: 4, vsync: this);
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
                      Get.back();
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
                  text: "Doctor Details",
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
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        left: 18.w, right: 12.w, top: 18.h, bottom: 18.h),
                    height: 175.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(width: 1, color: Color(0xffFFFFFF)),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 0),
                          blurRadius: 4.0,
                          color: Color.fromRGBO(0, 0, 0, 0.20),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                "assets/images/Dr. Pediatrician2.png",
                                width: 92.w,
                                height: 87.h,
                              ),
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
                                    SizedBox(
                                      width: 7.w,
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
                                Text(
                                  "Urologist, Kidney Surgeon, Peadiatric\nUrologist",
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "PTSans",
                                      color: Color(0xffE76880),
                                      letterSpacing: -0.3),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(
                                      width: 95.w,
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
                        SizedBox(
                          height: 14.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.to(Message());
                                  },
                                  child: Container(
                                    height: 32.h,
                                    width: 32.w,
                                    decoration: BoxDecoration(
                                      color: Color(0xffE76880),
                                      borderRadius:
                                          BorderRadius.circular(5.0.r),
                                    ),
                                    child: Center(
                                      child: Icon(
                                        FontAwesomeIcons.commentDots,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 7.w,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.to(VoiceCall());
                                  },
                                  child: Container(
                                    height: 32.h,
                                    width: 32.w,
                                    decoration: BoxDecoration(
                                      color: Color(0xffE76880),
                                      borderRadius:
                                          BorderRadius.circular(5.0.r),
                                    ),
                                    child: Center(
                                      child: Icon(
                                        FontAwesomeIcons.phone,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 7.w,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.to(VideoCall());
                                  },
                                  child: Container(
                                    height: 32.h,
                                    width: 32.w,
                                    decoration: BoxDecoration(
                                      color: Color(0xffE76880),
                                      borderRadius:
                                          BorderRadius.circular(5.0.r),
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.videocam_rounded,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 34.h,
                              width: 140.w,
                              child: BookNowButton(
                                onPressed: () {
                                  Get.to(DoctorSelectDate());
                                },
                                height: 34.h,
                                width: 140.w,
                                buttonColor: Color(0xffE76880),
                                text: "Book Now",
                                textColor: Color(0xffFFFFFF),
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  SizedBox(
                    height: 47.h,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: jobsTypes.length,
                        itemBuilder: (context, index) => GestureDetector(
                              onTap: () {
                                setState(() {
                                  currentSelected = index;
                                });
                              },
                              child: SizedBox(
                                height: 47.h,
                                width: 103.w,
                                child: Card(
                                  color: currentSelected == index
                                      ? const Color(0xff96CCD5)
                                      : const Color(0xff000000)
                                          .withOpacity(.05),
                                  elevation: 0,
                                  child: Center(
                                    child: Text(
                                      jobsTypes[index],
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Rubik",
                                        color: currentSelected == index
                                            ? const Color(0xffFFFFFF)
                                            : const Color(0xff222222),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )),
                  ),
                  SizedBox(height: 25.h),
                  screens[currentSelected],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

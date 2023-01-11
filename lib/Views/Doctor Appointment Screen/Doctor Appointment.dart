import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Custom Widget/button.dart';
import '../../Custom Widget/custom_text.dart';
import '../../CustomContainer/CustomContainer.dart';
import '../Navigation Bar/navigationbar.dart';

enum Genders { Male, Female, Others }

class DoctorAppointment extends StatefulWidget {
  const DoctorAppointment({Key? key}) : super(key: key);

  @override
  State<DoctorAppointment> createState() => _DoctorAppointmentState();
}

class _DoctorAppointmentState extends State<DoctorAppointment> {
  bool selected = true;
  Genders? _character;

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
                text: "Appointment",
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
            padding: EdgeInsets.only(bottom: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: 20.0.w,
                    right: 20.w,
                  ),
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
                  height: 30.h,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 20.0.w,
                    right: 20.w,
                  ),
                  child: CustomText(
                    text: "Appointment For",
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    fontColor: Color(0xff333333),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.0.w,
                    right: 20.w,
                  ),
                  child: CustomText(
                    text: "Patient’s Name",
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    fontColor: Color(0xff000000),
                  ),
                ),
                SizedBox(
                  height: 9.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.0.w,
                    right: 20.w,
                  ),
                  child: Container(
                    height: 54.h,
                    width: double.maxFinite.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: 1, color: Color.fromRGBO(103, 114, 148, 0.16)),
                      borderRadius: BorderRadius.circular(10.0.r),
                    ),
                    child: TextField(
                      cursorColor: const Color(0xffC0C0C0),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding:
                            EdgeInsets.only(left: 20, bottom: 10, top: 25),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.0.r),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10.0.r)),
                        hintText: "Abdullah Mamun",
                        hintStyle: const TextStyle(
                          color: Color(0xff677294),
                          fontFamily: 'Rubik',
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.0.w,
                    right: 20.w,
                  ),
                  child: CustomText(
                    text: "Age",
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    fontColor: Color(0xff000000),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.0.w,
                    right: 20.w,
                  ),
                  child: CustomText(
                    text: "Gender",
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    fontColor: Color(0xff000000),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          Radio<Genders>(
                            activeColor: MaterialStateColor.resolveWith(
                                (states) => const Color(0xff96CCD5)),
                            value: Genders.Male,
                            groupValue: _character,
                            onChanged: (Genders? value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                          CustomText(
                            text: "Male",
                            fontWeight: FontWeight.w300,
                            fontSize: 16.sp,
                            fontColor: Color(0xff677294),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.w),
                            child: Radio<Genders>(
                              activeColor: MaterialStateColor.resolveWith(
                                  (states) => const Color(0xff96CCD5)),
                              value: Genders.Female,
                              groupValue: _character,
                              onChanged: (Genders? value) {
                                setState(() {
                                  _character = value;
                                });
                              },
                            ),
                          ),
                          CustomText(
                            text: "Female",
                            fontWeight: FontWeight.w300,
                            fontSize: 16.sp,
                            fontColor: Color(0xff677294),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.w),
                            child: Radio<Genders>(
                              activeColor: MaterialStateColor.resolveWith(
                                  (states) => const Color(0xff96CCD5)),
                              value: Genders.Others,
                              groupValue: _character,
                              onChanged: (Genders? value) {
                                setState(() {
                                  _character = value;
                                });
                              },
                            ),
                          ),
                          CustomText(
                            text: "Others",
                            fontWeight: FontWeight.w300,
                            fontSize: 16.sp,
                            fontColor: Color(0xff677294),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.0.w,
                    right: 20.w,
                  ),
                  child: CustomText(
                    text: "Mobile Number",
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    fontColor: Color(0xff000000),
                  ),
                ),
                SizedBox(
                  height: 9.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.0.w,
                    right: 20.w,
                  ),
                  child: Container(
                    height: 54.h,
                    width: double.maxFinite.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: 1, color: Color.fromRGBO(103, 114, 148, 0.16)),
                      borderRadius: BorderRadius.circular(10.0.r),
                    ),
                    child: TextField(
                      cursorColor: const Color(0xffC0C0C0),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding:
                            EdgeInsets.only(left: 20, bottom: 10, top: 25),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.0.r),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10.0.r)),
                        hintText: "+1 000 000 0000",
                        hintStyle: const TextStyle(
                          color: Color(0xff677294),
                          fontFamily: 'Rubik',
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.0.w,
                    right: 20.w,
                  ),
                  child: CustomText(
                    text: "Address",
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    fontColor: Color(0xff000000),
                  ),
                ),
                SizedBox(
                  height: 9.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.0.w,
                    right: 20.w,
                  ),
                  child: Container(
                    height: 54.h,
                    width: double.maxFinite.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: 1, color: Color.fromRGBO(103, 114, 148, 0.16)),
                      borderRadius: BorderRadius.circular(10.0.r),
                    ),
                    child: TextField(
                      cursorColor: const Color(0xffC0C0C0),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding:
                            EdgeInsets.only(left: 20, bottom: 10, top: 25),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.0.r),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10.0.r)),
                        hintText: "dummy address here",
                        hintStyle: const TextStyle(
                          color: Color(0xff677294),
                          fontFamily: 'Rubik',
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.0.w,
                    right: 20.w,
                  ),
                  child: CustomText(
                    text: "Patient For",
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    fontColor: Color(0xff000000),
                  ),
                ),
                SizedBox(
                  height: 9.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.0.w,
                    right: 20.w,
                  ),
                  child: Container(
                    height: 54.h,
                    width: double.maxFinite.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: 1, color: Color.fromRGBO(103, 114, 148, 0.16)),
                      borderRadius: BorderRadius.circular(10.0.r),
                    ),
                    child: TextField(
                      cursorColor: const Color(0xffC0C0C0),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding:
                            EdgeInsets.only(left: 20, bottom: 10, top: 25),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.0.r),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10.0.r)),
                        hintText: "Cardiac PAtient",
                        hintStyle: const TextStyle(
                          color: Color(0xff677294),
                          fontFamily: 'Rubik',
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.0.w,
                    right: 20.w,
                  ),
                  child: CustomText(
                    text: "Write your problem",
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    fontColor: Color(0xff000000),
                  ),
                ),
                SizedBox(
                  height: 9.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.0.w,
                    right: 20.w,
                  ),
                  child: Container(
                    height: 98.h,
                    width: double.maxFinite.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: 1, color: Color.fromRGBO(140, 143, 165, 0.5)),
                      borderRadius: BorderRadius.circular(10.0.r),
                    ),
                    child: SizedBox(
                      height: 54.h,
                      width: 309.w,
                      child: TextField(
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        cursorColor: const Color(0xffC0C0C0),
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          isDense: true,
                          contentPadding:
                              EdgeInsets.only(left: 20, bottom: 10, top: 25),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10.0.r),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10.0.r)),
                          hintText:
                              "I am a cardio patient .Feel sick last two weeks.I\n need to talk about cardio problem.",
                          hintMaxLines: 5,
                          hintStyle: TextStyle(
                            color: Color(0xff677294),
                            fontFamily: 'Rubik',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.0.w,
                    right: 20.w,
                  ),
                  child: Container(
                    height: 54.h,
                    width: double.infinity.w,
                    child: MyCustomButton(
                      onPressed: () {
                        Get.to(AppointmentSuccessful(context));
                      },
                      height: 54.h,
                      width: double.infinity.w,
                      buttonColor: Color(0xffE76880),
                      text: "Submit",
                      textColor: Color(0xffFFFFFF),
                      fontSize: 14.sp,
                    ),
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

Future<dynamic> AppointmentSuccessful(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding: EdgeInsets.all(20.0).r,
          backgroundColor: Colors.transparent,
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: Container(
                  width: double.infinity.w,
                  height: 520.h,
                  child: Card(
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.r)),
                    color: Color(0xffFFFFFF),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 20.w, right: 20.w, top: 20.h, bottom: 20.h),
                      child: Column(
                        children: [
                          Container(
                            height: 156.h,
                            width: 156.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.0),
                              color: Color(0xffE7F8F2),
                            ),
                            child: Center(
                                child: Icon(
                              FontAwesomeIcons.solidThumbsUp,
                              color: Color(0xffE76880),
                              size: 70,
                            )),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          CustomText(
                            text: "Thank You !",
                            fontColor: Color(0xff333333),
                            fontSize: 38.sp,
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.3,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          CustomText(
                            text: "Your Appointment Request is Submitted ",
                            fontColor: Color(0xff677294),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.3,
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText(
                                text:
                                    "You booked an appointment with Dr.\nPediatrician Purpieson on February 21,\nat 02:00 PM",
                                textAlign: TextAlign.center,
                                fontColor: Color(0xff677294),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.3,
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
                                Get.to(Navigationbar());
                              },
                              height: 54.h,
                              width: double.infinity.w,
                              buttonColor: Color(0xffE76880),
                              text: "Done",
                              textColor: Color(0xffFFFFFF),
                              fontSize: 14.sp,
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                        ],
                      ),
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

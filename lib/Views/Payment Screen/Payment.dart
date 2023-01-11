import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Custom Widget/button.dart';
import '../../Custom Widget/custom_text.dart';
import '../../CustomContainer/CustomContainer.dart';
import '../Navigation Bar/navigationbar.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
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
                text: "Payment",
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
            padding: EdgeInsets.only(left: 20.0.w, right: 20.w, bottom: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  height: 180.h,
                  width: double.infinity.w,
                  decoration: BoxDecoration(
                    color: Color(0xff96CCD5),
                    borderRadius: BorderRadius.circular(10.0.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/Group 706.png",
                                width: 23.w,
                                height: 15.h,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "Credit Card",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Raleway"),
                              ),
                            ],
                          ),
                          Column(
                            //  crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Local Bank",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Raleway"),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15.0),
                                child: Text(
                                  "Limited",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Raleway"),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Image.asset(
                        "assets/images/sim image.png",
                        width: 43.w,
                        height: 29.h,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        "1245 5245 2458 3554",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Inter"),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Name",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Raleway"),
                              ),
                              Text(
                                "Masum Ahmed",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Raleway"),
                              ),
                            ],
                          ),
                          Column(
                            //  crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "EXPIRES",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Raleway"),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15.0),
                                child: Text(
                                  "25/10",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Raleway"),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "By adding debit/credit card,you agree to the",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xff8C8FA5),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Raleway"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Terms & Conditions",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xff555FD2),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Raleway"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.user,
                      size: 15,
                      color: Color(0xff8C8FA5),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    CustomText(
                      text: "Name",
                      textAlign: TextAlign.left,
                      fontColor: Color(0xff8C8FA5),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                TextField(
                  cursorColor: Color.fromRGBO(140, 143, 165, 0.38),
                  decoration: InputDecoration(
                    fillColor: Colors.transparent,
                    filled: true,
                    contentPadding: EdgeInsets.zero,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Color.fromRGBO(140, 143, 165, 0.38)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Color.fromRGBO(140, 143, 165, 0.38)),
                    ),
                    hintText: "Enter card holder full name",
                    hintStyle: const TextStyle(
                      color: Color(0xff677294),
                      fontFamily: 'Rubik',
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.creditCard,
                      size: 15,
                      color: Color(0xff8C8FA5),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    CustomText(
                      text: "Card number",
                      textAlign: TextAlign.left,
                      fontColor: Color(0xff8C8FA5),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                TextField(
                  cursorColor: Color.fromRGBO(140, 143, 165, 0.38),
                  decoration: InputDecoration(
                    fillColor: Colors.transparent,
                    filled: true,
                    contentPadding: EdgeInsets.zero,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Color.fromRGBO(140, 143, 165, 0.38)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Color.fromRGBO(140, 143, 165, 0.38)),
                    ),
                    hintText: "Enter card number",
                    hintStyle: const TextStyle(
                      color: Color(0xff677294),
                      fontFamily: 'Rubik',
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              FontAwesomeIcons.creditCard,
                              size: 15,
                              color: Color(0xff8C8FA5),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            CustomText(
                              text: "Expire date",
                              textAlign: TextAlign.left,
                              fontColor: Color(0xff8C8FA5),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 150.w,
                          child: TextField(
                            cursorColor: Color.fromRGBO(140, 143, 165, 0.38),
                            decoration: InputDecoration(
                              fillColor: Colors.transparent,
                              filled: true,
                              contentPadding: EdgeInsets.zero,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Color.fromRGBO(140, 143, 165, 0.38)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Color.fromRGBO(140, 143, 165, 0.38)),
                              ),
                              hintText: "DD - MM - YYYY",
                              hintStyle: const TextStyle(
                                color: Color(0xff677294),
                                fontFamily: 'Rubik',
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 3),
                              child: Icon(
                                FontAwesomeIcons.creditCard,
                                size: 15,
                                color: Color(0xff8C8FA5),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            CustomText(
                              text: "CVV",
                              textAlign: TextAlign.left,
                              fontColor: Color(0xff8C8FA5),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 150.w,
                          child: TextField(
                            cursorColor: Color.fromRGBO(140, 143, 165, 0.38),
                            decoration: InputDecoration(
                              fillColor: Colors.transparent,
                              filled: true,
                              contentPadding: EdgeInsets.zero,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Color.fromRGBO(140, 143, 165, 0.38)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Color.fromRGBO(140, 143, 165, 0.38)),
                              ),
                              hintText: "Enter CVV number",
                              hintStyle: const TextStyle(
                                color: Color(0xff677294),
                                fontFamily: 'Rubik',
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                Container(
                  height: 54.h,
                  width: double.infinity.w,
                  child: MyCustomButton(
                    onPressed: () {
                      Get.to(thankyou(context));
                    },
                    height: 54.h,
                    width: double.infinity.w,
                    buttonColor: Color(0xffE76880),
                    text: "Payment now",
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

Future<dynamic> thankyou(BuildContext context) {
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
                            text: "Your Appointment Successful",
                            fontColor: Color(0xff677294),
                            fontSize: 18.sp,
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
                          GestureDetector(
                            onTap: () {},
                            child: CustomText(
                              text: "Edit your appointment",
                              fontColor: Color(0xff677294),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.3,
                            ),
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

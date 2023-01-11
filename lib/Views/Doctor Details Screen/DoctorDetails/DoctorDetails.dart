import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Custom Widget/custom_text.dart';

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: "Services",
            fontSize: 18.sp,
            fontColor: Color(0xff333333),
            fontWeight: FontWeight.w500,
          ),
          SizedBox(
            height: 17.h,
          ),
          CustomText(
            text: "Patient care should be the number one priority.",
            fontSize: 13.sp,
            fontWeight: FontWeight.w400,
            fontColor: Color(0xff677294),
          ),
          SizedBox(
            height: 10.h,
          ),
          Divider(
            color: Color.fromRGBO(103, 114, 148, 0.1),
            thickness: 1,
          ),
          SizedBox(
            height: 10.h,
          ),
          CustomText(
            text: "If you run your practiceyou know how frustrating.",
            fontSize: 13.sp,
            fontWeight: FontWeight.w400,
            fontColor: Color(0xff677294),
          ),
          const Divider(
            color: Color.fromRGBO(103, 114, 148, 0.1),
            thickness: 1,
          ),
          SizedBox(
            height: 10.h,
          ),
          CustomText(
            text: "That’s why some of appointment reminder system.",
            fontSize: 13.sp,
            fontWeight: FontWeight.w400,
            fontColor: Color(0xff677294),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 190.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(width: 1, color: Color(0xffFFFFFF)),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 0),
                  blurRadius: 1.0,
                  color: Color.fromRGBO(0, 0, 0, 0.20),
                ),
              ],
            ),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/images/location.png",
                  height: 190.h,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

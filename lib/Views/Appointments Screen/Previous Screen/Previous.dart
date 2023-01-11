import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../Custom Widget/custom_text.dart';


class Previous extends StatefulWidget {
  const Previous({Key? key}) : super(key: key);

  @override
  State<Previous> createState() => _PreviousState();
}

class _PreviousState extends State<Previous> {
  bool selected = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(
            left: 20.0.w,
            right: 20.w,
          ),
          color: Colors.transparent,
          height: 250.h,
          width: double.infinity,
          child: Card(
            elevation: 0.0,
            child: Container(
              height: 250.h,
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
                          Container(
                            height: 60.h,
                            width: 55.w,
                            decoration: BoxDecoration(
                              color: Color(0xff96CCD5),
                              borderRadius: BorderRadius.circular(6.0.r),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: "27",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp,
                                      fontColor: Color(0xffFFFFFF),
                                    ),
                                    CustomText(
                                      text: "FEB",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp,
                                      fontColor: Color(0xffFFFFFF),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.h,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                              CustomText(
                                text: "online video consultation",
                                fontWeight: FontWeight.w300,
                                fontSize: 12.sp,
                                fontColor: Color(0xff96CCD5),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              CustomText(
                                text: "monday 01:00 pm",
                                fontWeight: FontWeight.w300,
                                fontSize: 12.sp,
                                fontColor: Color(0xff677294),
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
                    height: 10.h,
                  ),
                  Divider(
                    color: Color(0xff000000).withOpacity(0.25),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomText(
                    text: "Assigned Nurse",
                    fontWeight: FontWeight.w300,
                    fontSize: 12.sp,
                    fontColor: Color(0xff96CCD5),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/maria.png",
                        height: 91.h,
                        width: 91.w,
                      ),
                      SizedBox(
                        width: 10.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "Maria",
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                            fontColor: Color(0xff000000),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: "Visit Date",
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                fontColor: Color(0xff000000),
                              ),
                              SizedBox(
                                width: 50.h,
                              ),
                              CustomText(
                                text: "Visit Time",
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                fontColor: Color(0xff000000),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: "DD-MM-YYYY",
                                fontWeight: FontWeight.w300,
                                fontSize: 15.sp,
                                fontColor: Color(0xff8C8FA5),
                              ),
                              SizedBox(
                                width: 19.h,
                              ),
                              CustomText(
                                text: "02:00 Pm",
                                fontWeight: FontWeight.w300,
                                fontSize: 14.sp,
                                fontColor: Color(0xff8C8FA5),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Custom Widget/custom_text.dart';


class DoctorAcademics extends StatelessWidget {
  const DoctorAcademics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> degreeTitle = ["MBBS", "FCPS (Urology)"];
    List<String> university = [
      "University of cambridge",
      "University of cambridge"
    ];
    List<String> time = [
      "2013-2017",
      "2013-2017",
    ];
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            text: "Academics",
            fontWeight: FontWeight.w500,
          ),
          const Divider(),
          SizedBox(
            height: 330.h,
            child: ListView.builder(
              itemCount: degreeTitle.length,
              itemBuilder: (context, index) => Card(
                elevation: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(width: 1, color: Color(0xffFFFFFF)),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 0),
                        blurRadius: 2.0,
                        color: Color.fromRGBO(0, 0, 0, 0.20),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: degreeTitle[index],
                          fontSize: 13.sp,
                          fontColor: const Color(0xff96CCD5),
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        CustomText(
                          text: university[index],
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          fontColor: const Color(0xff000000).withOpacity(.35),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        CustomText(
                          text: time[index],
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          fontColor: const Color(0xff000000).withOpacity(.35),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

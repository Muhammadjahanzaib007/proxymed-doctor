import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Custom Widget/custom_text.dart';

class DoctorExperience extends StatelessWidget {
  const DoctorExperience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> title = [
      "Consultant Urologist",
      "HOD Urology",
      "HOD Urology",
    ];
    List<String> description = [
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard ",
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard ",
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard ",
    ];
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: "Experience",
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
            fontColor: Color(0xff000000),
          ),
          const Divider(),
          Container(
              height: 330.h,
              width: double.infinity.w,
              child: ListView.builder(
                  itemCount: title.length,
                  itemBuilder: (context, index) => Card(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.r),
                            border:
                                Border.all(width: 1, color: Color(0xffFFFFFF)),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 0),
                                blurRadius: 4.0,
                                color: Color.fromRGBO(0, 0, 0, 0.2),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: title[index],
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  fontColor: Color(0xff96CCD5),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text(
                                  description[index],
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff000000).withOpacity(.35),
                                      fontFamily: "Rubik"),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Custom Widget/custom_text.dart';

class DoctorAvailability extends StatelessWidget {
  const DoctorAvailability({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int length = 7;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: "Availability",
            fontColor: Color(0xff000000),
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(
            height: 5.h,
          ),
          Divider(
            color: const Color(0xff000000).withOpacity(.1),
          ),
          SizedBox(
            height: 330.h,
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "Monday",
                          fontSize: 14.sp,
                          fontColor: Color(0xff000000),
                          fontWeight: FontWeight.w400,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 100,
                          child: GridView.builder(
                              itemCount: length,
                              physics: NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 4,
                                      crossAxisSpacing: 10,
                                      mainAxisSpacing: 10,
                                      mainAxisExtent: 40),
                              itemBuilder: (context, index) => Container(
                                    height: 40.h,
                                    width: 76.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: const Color(0xff96CCD5)
                                          .withOpacity(.08),
                                    ),
                                    child: Center(
                                      child: CustomText(
                                        text: "1:00 PM",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13.sp,
                                        fontColor: Color(0xff96CCD5),
                                      ),
                                    ),
                                  )),
                        ),
                        Divider(
                          color: const Color(0xff000000).withOpacity(.1),
                        ),
                      ],
                    )),
          ),
        ],
      ),
    );
  }
}

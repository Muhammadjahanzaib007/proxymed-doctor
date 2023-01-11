import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Custom Widget/custom_text.dart';
import '../../CustomContainer/CustomContainer.dart';

import 'Appointment Accepted Screen/Appointment Accepted.dart';
import 'Previous Screen/Previous.dart';
import 'Running Screen/Running.dart';
import 'Today Upcomming Screen/Today_Upcomming.dart';

class Appointments extends StatefulWidget {
  const Appointments({Key? key}) : super(key: key);

  @override
  State<Appointments> createState() => _AppointmentsState();
}

class _AppointmentsState extends State<Appointments> {
  bool selected = true;
  int currentSelected = 0;
  List<String> jobsTypes = [
    "Today/Upcomming",
    "Accepted",
    "Running",
    "Previous",
  ];
  List screens = [
    Today_Upcomming(),
    AppointmentAccepted(),
    Running(),
    Previous(),
  ];
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
          child: Column(
            children: [
              Container(
                padding:
                    EdgeInsets.only(left: 20.0.w, right: 20.w, bottom: 20.h),
                child: SizedBox(
                  height: 36.h,
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
                              height: 36.h,
                              width: 150.w,
                              child: Card(
                                color: currentSelected == index
                                    ? const Color(0xffE76880)
                                    : const Color(0xff000000).withOpacity(.05),
                                elevation: 0,
                                child: Center(
                                  child: Text(
                                    jobsTypes[index],
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Rubik",
                                      color: currentSelected == index
                                          ? const Color(0xffFFFFFF)
                                          : const Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )),
                ),
              ),
              screens[currentSelected],
            ],
          ),
        ),
      ),
    ));
  }
}

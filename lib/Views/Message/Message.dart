import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Custom Widget/custom_text.dart';
import '../../CustomContainer/CustomContainer.dart';
import '../../Models/MessageModel.dart';
import '../MessageChat/MessageChat.dart';

class Message extends StatelessWidget {
  Message({Key? key}) : super(key: key);
  final List<MeasageModel> list = MeasageModel.dummyData;

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
                  text: "Messages",
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
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          child: ListView.builder(
            itemCount: MeasageModel.dummyData.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MessageChat()));
              },
              child: Container(
                height: 95.h,
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
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 8.0.h, bottom: 8.h, left: 10.w, right: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 80.h,
                        width: 70.w,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(17),
                          child: Image.asset(
                            MeasageModel.dummyData[index].imagename,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              CustomText(
                                text: MeasageModel.dummyData[index].name,
                                fontSize: 16.sp,
                              ),
                              SizedBox(
                                width: 70.h,
                              ),
                              CustomText(
                                text: MeasageModel.dummyData[index].time,
                                fontColor: Color(0xff000000).withOpacity(0.30),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  height: 38.h,
                                  width: 120.w,
                                  child: CustomText(
                                    text: MeasageModel.dummyData[index].message,
                                    fontColor:
                                        Color(0xff000000).withOpacity(0.30),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                  )),
                              SizedBox(
                                child: CustomText(
                                  text: MeasageModel.dummyData[index].date,
                                  fontSize: 16.sp,
                                  fontColor: Color(0xff000000).withOpacity(.3),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

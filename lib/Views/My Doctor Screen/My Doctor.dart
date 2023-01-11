import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Custom Widget/book_now_button.dart';
import '../../Custom Widget/custom_text.dart';
import '../../CustomContainer/CustomContainer.dart';
import '../Doctor Select Date screen/Doctor_Select_Date.dart';
import '../Find Doctor Screen/List/find_doctor_list.dart';
class MyDoctor extends StatefulWidget {
  const MyDoctor({Key? key}) : super(key: key);

  @override
  State<MyDoctor> createState() => _MyDoctorState();
}

class _MyDoctorState extends State<MyDoctor> {
  bool selected = true;
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
            padding: EdgeInsets.only(
              left: 20.w,
              right: 20.w,
            ),
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
                  text: "My Doctor",
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
              padding: EdgeInsets.only(
                  left: 20.w, right: 20.w, top: 10.h, bottom: 20.h),
              child: Column(children: [
                Container(
                  height: 500.h,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: findDoctorListModel.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        child: Card(
                          elevation: 0.0,
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              Container(
                                  height: 190.h,
                                  width: double.infinity.w,
                                  padding: const EdgeInsets.all(18.0).r,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8.r),
                                    border: Border.all(
                                        width: 1, color: Color(0xffFFFFFF)),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(0, 0),
                                        blurRadius: 4.0,
                                        color: Color.fromRGBO(0, 0, 0, 0.2),
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            findDoctorListModel[index]
                                                .imageName,
                                            width: 92.w,
                                            height: 115.h,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 14.w),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: 3.w,
                                                  ),
                                                  child: CustomText(
                                                    text: findDoctorListModel[
                                                            index]
                                                        .text,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 18.sp,
                                                    fontColor:
                                                        Color(0xff333333),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 5.h,
                                                ),
                                                Container(
                                                  width: 144.w,
                                                  child: Text(
                                                    findDoctorListModel[index]
                                                        .text1,
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontFamily: "PTSans",
                                                        color:
                                                            Color(0xffE76880),
                                                        letterSpacing: -0.3),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 5.h,
                                                ),
                                                Text(
                                                  findDoctorListModel[index]
                                                      .text2,
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily: "PTSans",
                                                      color: Color(0xff96CCD5),
                                                      letterSpacing: -0.3),
                                                ),
                                                SizedBox(
                                                  height: 5.h,
                                                ),
                                                CustomText(
                                                  text:
                                                      findDoctorListModel[index]
                                                          .text3,
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 12.sp,
                                                  fontColor: Color(0xff677294),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Column(
                                            children: [
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
                                                        color:
                                                            Color(0xff677294),
                                                      ),
                                              ),
                                              SizedBox(
                                                height: 18.h,
                                              ),
                                              InkWell(
                                                onTap: () {},
                                                child: Image.asset(
                                                    "assets/images/delete icon.png"),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            height: 34.h,
                                            width: 179.w,
                                            child: BookNowButton(
                                              onPressed: () {
                                                Get.to(DoctorSelectDate());
                                              },
                                              height: 34.h,
                                              width: 112.w,
                                              buttonColor: Color(0xffE76880),
                                              text: "Book Now",
                                              textColor: Color(0xffFFFFFF),
                                              fontSize: 12.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                        onTap: () {
                          setState(() {});
                        },
                      );
                    },
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

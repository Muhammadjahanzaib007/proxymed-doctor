import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Custom Widget/custom_text.dart';
import '../Drawer/Drawer.dart';
import '../Enable Loction/EnableLocation.dart';
import '../Find Doctor Screen/find_doctor_screen.dart';
import '../Speciality Screen/Speciality.dart';
import 'list/featuredoctor_list.dart';
import 'list/nearbydoctor_list.dart';
import 'list/speciality_list.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<IconData> icons = [
    Icons.favorite_border,
    Icons.favorite,
    Icons.favorite_border,
    Icons.favorite,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerNavigation(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 185.h,
                      width: double.infinity.w,
                      child: Stack(
                        children: [
                          Container(
                            height: 156.h,
                            width: double.infinity.w,
                            decoration: BoxDecoration(
                              color: Color(0xff96CCD5),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.zero,
                                topLeft: Radius.zero,
                                bottomLeft: Radius.circular(20.r),
                                bottomRight: Radius.circular(20.r),
                              ),
                            ),
                            child: Container(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 40),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Builder(
                                    builder: (BuildContext context) => InkWell(
                                      onTap: () {
                                        Scaffold.of(context).openDrawer();
                                      },
                                      child: Image.asset(
                                        "assets/images/icon_home.png",
                                        height: 27.h,
                                        width: 27.w,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 3.h),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomText(
                                          text: "Hi Handwerker! ",
                                          textAlign: TextAlign.left,
                                          fontColor: Color(0xffFFFFFF),
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w300,
                                          letterSpacing: -0.3,
                                        ),
                                        SizedBox(
                                          height: 6.h,
                                        ),
                                        CustomText(
                                          text: "Find Your Doctor",
                                          textAlign: TextAlign.left,
                                          fontColor: Color(0xffFFFFFF),
                                          fontSize: 25.sp,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: -0.3,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 72.w),
                                    child: Icon(
                                      Icons.notifications_none_outlined,
                                      color: Colors.white,
                                      size: 20.h,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 20.w, right: 20.w, top: 124.h),
                            child: Container(
                              padding: EdgeInsets.only(left: 10.w, right: 10.w),
                              width: double.infinity,
                              height: 54.h,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6.r)),
                              child: Center(
                                child: TextField(
                                  decoration: InputDecoration(
                                      prefixIcon: const Icon(
                                        Icons.search,
                                        size: 22,
                                        color: Color(0xff677294),
                                      ),
                                      suffixIcon: IconButton(
                                        icon: const Icon(
                                          Icons.clear,
                                          color: Color(0xff677294),
                                          size: 22,
                                        ),
                                        onPressed: () {},
                                      ),
                                      hintText: 'Search...',
                                      hintStyle: const TextStyle(
                                        color: Color(0xff677294),
                                        fontFamily: 'Rubik',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      border: InputBorder.none),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        left: 8,
                        right: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.location_on_outlined,
                              color: Color(0xff000000),
                              size: 20,
                            ),
                            label: CustomText(
                              text: "Please choose your address",
                              textAlign: TextAlign.left,
                              fontColor: Color(0xff000000),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ), //label text

                            style: ElevatedButton.styleFrom(
                                elevation: 0.0,
                                backgroundColor: Colors.transparent),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(EnableLocation());
                            },
                            child: Icon(
                              Icons.my_location,
                              color: Color(0xff000000),
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.w, right: 20.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "Speciality",
                            textAlign: TextAlign.center,
                            fontColor: Color(0xff333333),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.3,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(Speciality());
                            },
                            child: Row(
                              children: [
                                CustomText(
                                  text: "See all",
                                  textAlign: TextAlign.center,
                                  fontColor: Color(0xff677294),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w300,
                                  letterSpacing: -0.3,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Color(0xff677294),
                                  size: 7,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20.w, right: 20.w),
                      height: 120.h,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: specialityListModel.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            child: Card(
                              elevation: 0.0,
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Container(
                                    height: 83.h,
                                    width: 83.w,
                                    padding: const EdgeInsets.all(15.0).r,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15.r),
                                      border: Border.all(
                                          width: 1, color: Color(0xffFFFFFF)),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: Offset(0, 0),
                                          blurRadius: 0.0,
                                          color: Color.fromRGBO(0, 0, 0, 0.25),
                                        ),
                                      ],
                                    ),
                                    child: Image.asset(
                                      specialityListModel[index].imageName,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  CustomText(
                                    text: specialityListModel[index].text,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp,
                                    fontColor: Color(0xff000000),
                                  ),
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
                    SizedBox(
                      height: 30.h,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20.w, right: 20.w),
                      child: CustomText(
                        text: "Nearby Doctor",
                        textAlign: TextAlign.center,
                        fontColor: Color(0xff333333),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.3,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20.w, right: 20.w),
                      height: 280.h,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: nearbydoctorListModel.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            child: Card(
                              elevation: 0.0,
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Container(
                                    height: 270.h,
                                    width: 190.w,
                                    // padding: const EdgeInsets.all(15.0).r,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12.r),
                                      border: Border.all(
                                          width: 1, color: Color(0xffFFFFFF)),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: Offset(0, 0),
                                          blurRadius: 0.0,
                                          color: Color.fromRGBO(0, 0, 0, 0.8),
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(12),
                                              topRight: Radius.circular(12)),
                                          child: Image.asset(
                                            nearbydoctorListModel[index]
                                                .imageName,
                                            fit: BoxFit.cover,
                                            width: 190.w,
                                            height: 180.h,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 14.h,
                                        ),
                                        CustomText(
                                          text:
                                              nearbydoctorListModel[index].text,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18.sp,
                                          fontColor: Color(0xff000000),
                                        ),
                                        SizedBox(
                                          height: 3.h,
                                        ),
                                        CustomText(
                                          text: nearbydoctorListModel[index]
                                              .text1,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12.sp,
                                          fontColor: Color.fromRGBO(
                                              103, 114, 148, 0.8),
                                        ),
                                        SizedBox(
                                          height: 6.h,
                                        ),
                                        RatingBar.builder(
                                          initialRating: 4,
                                          minRating: 5,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemSize: 20,
                                          itemCount: 5,
                                          // itemPadding:
                                          //     EdgeInsets.only(left: 5, right: 5)
                                          //         .r,
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: Color(0xffF6D060),
                                            size: 24,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                Get.to(FindDoctorScreen());
                              });
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.w, right: 20.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "Feature Doctor",
                            textAlign: TextAlign.center,
                            fontColor: Color(0xff333333),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.3,
                          ),
                          GestureDetector(
                            onTap: () {
                              Speciality();
                            },
                            child: Row(
                              children: [
                                CustomText(
                                  text: "See all",
                                  textAlign: TextAlign.center,
                                  fontColor: Color(0xff677294),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w300,
                                  letterSpacing: -0.3,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Color(0xff677294),
                                  size: 7,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20.w, right: 20.w),
                      height: 150.h,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: featuredoctorListModel.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            child: Card(
                              elevation: 0.0,
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Container(
                                    height: 140.h,
                                    width: 96.w,
                                    padding: const EdgeInsets.all(9.0).r,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(6.r),
                                      border: Border.all(
                                          width: 1, color: Color(0xffFFFFFF)),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: Offset(0, 0),
                                          blurRadius: 2.0,
                                          color: Color.fromRGBO(0, 0, 0, 0.20),
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Icon(
                                              icons[index],
                                              color: Color(0xffFF0000),
                                              size: 10,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: Color(0xffF6D060),
                                                  size: 15,
                                                ),
                                                SizedBox(
                                                  width: 6.w,
                                                ),
                                                CustomText(
                                                  text: featuredoctorListModel[
                                                          index]
                                                      .number,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 10.sp,
                                                  fontColor: Color(0xff000000),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Image.asset(
                                          featuredoctorListModel[index]
                                              .imageName,
                                          fit: BoxFit.cover,
                                          width: 54.w,
                                          height: 54.h,
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        CustomText(
                                          text: featuredoctorListModel[index]
                                              .text,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12.sp,
                                          fontColor: Color(0xff000000),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomText(
                                              text: "\$",
                                              fontColor: Color(0xff96CCD5),
                                              fontSize: 9.sp,
                                              fontWeight: FontWeight.w300,
                                              letterSpacing: -0.3,
                                            ),
                                            CustomText(
                                              text:
                                                  featuredoctorListModel[index]
                                                      .text1,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 9.sp,
                                              fontColor: Color(0xff677294),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                Get.to(FindDoctorScreen());
                              });
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

import '../../Custom Widget/button.dart';
import '../../Custom Widget/custom_text.dart';
import '../../CustomContainer/CustomContainer.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({Key? key}) : super(key: key);

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  XFile? imageFile;
  DateTime selectedDate = DateTime.now();
  TextEditingController nameText = TextEditingController();
  TextEditingController emailText = TextEditingController();
  TextEditingController locationText = TextEditingController();
  TextEditingController servicesText = TextEditingController();
  TextEditingController experienceText = TextEditingController();
  bool writeNumber = false;
  bool fieldWork = true;
  String? currentSpeciality;
  List<String> speciality = ["Cardiac", "Sunday", "Monday"];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameText.text = "Abdullah Mamun";
    emailText.text = "dummay@gmail.com";
    locationText.text = "Edited Details";
    servicesText.text = "Patient care should be the number\n"
        " one priority.";
    experienceText.text = "7";
  }

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      widget: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          titleSpacing: 0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          backgroundColor: const Color(0xff96CCD5),
          leading: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Container(
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
              ),
            ],
          ),
          title: Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: CustomText(
              text: "Profile",
              textAlign: TextAlign.left,
              fontColor: Color(0xffFFFFFF),
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              letterSpacing: -0.3,
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size(double.infinity, 280.h),
            child: Column(
              children: [
                CustomText(
                  text: "Set up your profile",
                  fontColor: Color(0xffFFFFFF),
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20.w, right: 20.h),
                  child: CustomText(
                    text: "Update your profile to connect your doctor with\n"
                        "better impression.",
                    fontColor: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 29.0.h, top: 53.h, bottom: 50.h),
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 112.h,
                        width: 133.w,
                      ),
                      GestureDetector(
                        onTap: () {
                          _showChoiceDialog(context);
                        },
                        child: CircleAvatar(
                          radius: 55,
                          child: imageFile == null
                              ? Image.asset(
                                  "assets/images/Profile Image.png",
                                  height: 130.h,
                                  width: 130.w,
                                  fit: BoxFit.fill,
                                )
                              : Image.file(File(
                                  imageFile!.path,
                                )),
                        ),
                      ),
                      Positioned(
                        top: 60.h,
                        left: 85.w,
                        child: GestureDetector(
                          onTap: () {
                            _showChoiceDialog(context);
                          },
                          child: CircleAvatar(
                            backgroundColor: Color.fromRGBO(103, 114, 148, 0.8),
                            child: Center(
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 28.h,
                  ),
                  CustomText(
                    text: "Personal information",
                    fontColor: Color(0xff333333),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.3,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        border: Border.all(width: 1, color: Color(0xffFFFFFF)),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 0),
                            blurRadius: 1.0,
                            color: Color.fromRGBO(0, 0, 0, 0.20),
                          ),
                        ]),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 9.0.h, bottom: 10.h, left: 20.w, right: 20.w),
                      child: Container(
                        color: Colors.white,
                        height: 60.h,
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "Name",
                              fontColor: Color(0xff96CCD5),
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.3,
                            ),
                            SizedBox(
                              height: 35.h,
                              width: double.infinity,
                              child: TextField(
                                controller: nameText,
                                cursorColor: const Color(0xffE76880),
                                style: TextStyle(
                                    color: Color(0xff677294),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "Rubik"),
                                decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.all(4),
                                    border: InputBorder.none),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xffFFFFFF),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 0),
                            blurRadius: 1.0,
                            color: Color.fromRGBO(0, 0, 0, 0.20),
                          ),
                        ]),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 9.0.h, bottom: 10.h, left: 20.w, right: 20.w),
                      child: SizedBox(
                        height: 60.h,
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "Email",
                              fontColor: Color(0xff96CCD5),
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(
                              height: 35.h,
                              width: double.infinity,
                              child: TextField(
                                controller: emailText,
                                cursorColor: const Color(0xffE76880),
                                style: TextStyle(
                                    color: Color(0xff677294),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "Rubik"),
                                decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.all(4),
                                    border: InputBorder.none),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 69.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xffFFFFFF),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 0),
                            blurRadius: 1.0,
                            color: Color.fromRGBO(0, 0, 0, 0.20),
                          ),
                        ]),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 9.0.h, bottom: 10.h, left: 20.w, right: 20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: "Contact Number",
                            fontColor: Color(0xff96CCD5),
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 33,
                                width: 230,
                                child: writeNumber == true
                                    ? TextField(
                                        cursorColor: Color(0xffE76880),
                                        style: TextStyle(
                                            color: Color(0xff677294),
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w300,
                                            fontFamily: "Rubik"),
                                        decoration: InputDecoration(
                                            contentPadding: EdgeInsets.all(4),
                                            border: InputBorder.none),
                                      )
                                    : Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 13.h,
                                          ),
                                          CustomText(
                                            text: "+92123456789",
                                            fontColor: Color(0xff677294),
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ],
                                      ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    writeNumber = !writeNumber;
                                  });
                                },
                                child: Icon(
                                  FontAwesomeIcons.pencil,
                                  color: Color(0xff677294),
                                  size: 15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 64.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xffFFFFFF),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 0),
                            blurRadius: 1.0,
                            color: Color.fromRGBO(0, 0, 0, 0.20),
                          ),
                        ]),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 9.0.h, bottom: 10.h, left: 20.w, right: 20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: "Date of birth",
                            fontColor: Color(0xff96CCD5),
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 30.h,
                                width: 230.w,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    CustomText(
                                      text:
                                          "${selectedDate.day.toString()}-${selectedDate.month.toString()}-${selectedDate.year}",
                                      fontColor: Color(0xff677294),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selectDate(context);
                                  });
                                },
                                child: Icon(
                                  FontAwesomeIcons.pencil,
                                  color: Color(0xff677294),
                                  size: 15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xffFFFFFF),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 0),
                            blurRadius: 1.0,
                            color: Color.fromRGBO(0, 0, 0, 0.20),
                          ),
                        ]),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 9.0.h, bottom: 10.h, left: 20.w, right: 20.w),
                      child: SizedBox(
                        height: 60.h,
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "Location",
                              fontColor: Color(0xff96CCD5),
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(
                              height: 35.h,
                              width: double.infinity,
                              child: TextField(
                                controller: locationText,
                                cursorColor: const Color(0xffE76880),
                                style: TextStyle(
                                    color: Color(0xff677294),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "Rubik"),
                                decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.all(4),
                                    border: InputBorder.none),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 54.h,
                    width: double.infinity.w,
                    child: MyCustomButton(
                      onPressed: () {
                        //  Get.to(showCustomDialogthankyou(context));
                      },
                      height: 54.h,
                      width: double.infinity.w,
                      buttonColor: Color(0xffE76880),
                      text: "Continue",
                      textColor: Color(0xffFFFFFF),
                      fontSize: 14.sp,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(2015),
        lastDate: DateTime(2101));
    if (picked != null) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  void _openCamera(BuildContext context) async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
    );
    setState(() {
      imageFile = pickedFile!;
    });
  }

  void _openGallery(BuildContext context) async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    setState(() {
      imageFile = pickedFile!;
    });
  }

  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text(
              "Choose option",
              style: TextStyle(color: Color(0xff96CCD5)),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Divider(
                    height: 1.h,
                    color: const Color(0xff96CCD5),
                  ),
                  ListTile(
                    onTap: () {
                      _openGallery(context);
                      Navigator.pop(context);
                    },
                    title: const Text("Gallery"),
                    leading: const Icon(
                      Icons.account_box,
                      color: Color(0xff8C8FA5),
                    ),
                  ),
                  Divider(
                    height: 1.h,
                    color: const Color(0xff96CCD5),
                  ),
                  ListTile(
                    onTap: () {
                      _openCamera(context);
                      Navigator.pop(context);
                    },
                    title: const Text("Camera"),
                    leading: const Icon(
                      Icons.camera,
                      color: Color(0xff8C8FA5),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../Custom Widget/button.dart';
import '../../Custom Widget/custom_text.dart';
import '../../CustomContainer/CustomContainer.dart';
import '../OtpScreen/otp_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();
  List<PageViewModel> getPage() {
    return [
      PageViewModel(
        image: Padding(
          padding: EdgeInsets.only(top: 115.h),
          child: Image.asset(
            "assets/images/illustration.png",
          ),
        ),
        titleWidget: CustomText(
          text: "Find Trusted Doctors",
          fontColor: Color(0xff333333),
          fontSize: 28.sp,
          fontWeight: FontWeight.w500,
        ),
        bodyWidget: Text(
          "Access thousands of doctors instantly.\n You can easily contact with the\n doctors and contact for your needs.",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w500, fontFamily: "Raleway"),
        ),
        footer: Container(
          height: 54.h,
          width: double.infinity.w,
          child: MyCustomButton(
            onPressed: () {
              Get.to(OtpScreen());
            },
            height: 54.h,
            width: double.infinity.w,
            buttonColor: Color(0xffE76880),
            text: "Get Started",
            textColor: Color(0xffFFFFFF),
            fontSize: 14.sp,
          ),
        ),
      ),
      PageViewModel(
        image: Padding(
          padding: EdgeInsets.only(top: 115.h),
          child: Image.asset(
            "assets/images/illustration1.png",
          ),
        ),
        titleWidget: CustomText(
          text: "Choose Best Doctors",
          fontColor: Color(0xff333333),
          fontSize: 28.sp,
          fontWeight: FontWeight.w500,
        ),
        bodyWidget: Text(
          "Easily connect with doctor and start\nvideo chat for your better treatment &\nprescription.",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w500, fontFamily: "Raleway"),
        ),
        footer: Container(
          height: 54.h,
          width: double.infinity.w,
          child: MyCustomButton(
            onPressed: () {
              Get.to(OtpScreen());
            },
            height: 54.h,
            width: double.infinity.w,
            buttonColor: Color(0xffE76880),
            text: "Get Started",
            textColor: Color(0xffFFFFFF),
            fontSize: 14.sp,
          ),
        ),
      ),
      PageViewModel(
        image: Padding(
          padding: EdgeInsets.only(top: 115.h),
          child: Image.asset(
            "assets/images/illustration2.png",
          ),
        ),
        titleWidget: CustomText(
          text: "Easy Appointments",
          fontColor: Color(0xff333333),
          fontSize: 28.sp,
          fontWeight: FontWeight.w500,
        ),
        bodyWidget: Text(
          "Book an appointment with doctor.Chat\nwith doctor via appoinment letter &/nget consultant.",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w500, fontFamily: "Raleway"),
        ),
        footer: Container(
          height: 54.h,
          width: double.infinity.w,
          child: MyCustomButton(
            onPressed: () {
              Get.to(OtpScreen());
            },
            height: 54.h,
            width: double.infinity.w,
            buttonColor: Color(0xffE76880),
            text: "Get Started",
            textColor: Color(0xffFFFFFF),
            fontSize: 14.sp,
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      widget: Scaffold(
        backgroundColor: Colors.transparent,
        body: IntroductionScreen(
          globalBackgroundColor: Colors.transparent,
          pages: getPage(),
          done: Text(""),
          onDone: () {},
          showNextButton: false,
          curve: Curves.easeInOutCirc,
          dotsDecorator: const DotsDecorator(
            size: Size(0, 0),
            color: Colors.transparent,
            activeSize: Size(9, 9),
            activeColor: Colors.transparent,
            activeShape: CircleBorder(),
            // activeShape:
          ),
          showSkipButton: false,
          skip: Expanded(
            child: CustomText(
              text: "Skip",
              fontColor: Color(0xff333333),
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

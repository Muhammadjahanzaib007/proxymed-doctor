import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Custom Widget/custom_text.dart';


class VideoCall extends StatefulWidget {
  const VideoCall({Key? key}) : super(key: key);

  @override
  State<VideoCall> createState() => _VideoCallState();
}

class _VideoCallState extends State<VideoCall> {
  bool oNOF = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                "assets/images/Dr. Tanisha Khan.png",
                fit: BoxFit.fill,
                height: double.infinity,
                width: double.infinity,
              ),
            ),
            Positioned(
              top: 51.h,
              left: 250.w,
              child: Image.asset(
                "assets/images/videocall.png",
                fit: BoxFit.fill,
                height: 91.h,
                width: 91.w,
              ),
            ),
            Positioned(
              top: 36.h,
              left: 20.w,
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 30.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffFFFFFF)),
                  child: const Center(
                      child: Icon(Icons.arrow_back_ios_new,
                          size: 18, color: Color(0xff677294))),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                height: 200.h,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomText(
                        text: "Dr. Tanisha Khan",
                        fontColor: Color(0xffFFFFFF),
                        fontWeight: FontWeight.w700,
                        fontSize: 20.sp,
                      ),
                      SizedBox(
                        height: 11.h,
                      ),
                      CustomText(
                        text: "10:08",
                        fontColor: Color(0xffFFFFFF),
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xff96CCD5),
                            radius: 20,
                            child: Icon(
                              Icons.videocam,
                              color: Color(0xffFFFFFF),
                              size: 30,
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Color(0xffE76880),
                            radius: 30,
                            child: Icon(
                              Icons.phone,
                              color: Color(0xffFFFFFF),
                              size: 40,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                oNOF = !oNOF;
                              });
                            },
                            child: CircleAvatar(
                              backgroundColor: Color(0xff96CCD5),
                              radius: 20,
                              child: Icon(
                                oNOF == true ? Icons.mic : Icons.mic_off,
                                color: const Color(0xffFFFFFF),
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

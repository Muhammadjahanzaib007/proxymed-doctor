import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Custom Widget/custom_text.dart';
import '../../CustomContainer/CustomContainer.dart';

class VoiceCall extends StatefulWidget {
  const VoiceCall({Key? key}) : super(key: key);

  @override
  State<VoiceCall> createState() => _VoiceCallState();
}

class _VoiceCallState extends State<VoiceCall> {
  bool oNOF = true;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      widget: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(12.0),
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
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 50.0.w, right: 50.0.w, top: 110.h),
          child: Column(
            children: [
              CustomText(
                text: "Outgoing call",
                fontSize: 15,
                fontColor: Color(0xff555FD2),
                fontWeight: FontWeight.w400,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0.h),
                child: CircleAvatar(
                  radius: 53,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Image.asset(
                        "assets/images/voicecall.png",
                        height: 147,
                        width: 147,
                        fit: BoxFit.fill,
                      )),
                ),
              ),
              CustomText(
                text: "Dr. Tanisha Khan",
                fontColor: Color(0xff172331),
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
              Spacer(),
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
    );
  }
}

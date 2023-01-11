// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOTPTextFiledBox extends StatefulWidget {
  final TextEditingController? textEditingController;
  const CustomOTPTextFiledBox({Key? key, this.textEditingController});

  @override
  State<CustomOTPTextFiledBox> createState() => _CustomOTPTextFiledBoxState();
}

class _CustomOTPTextFiledBoxState extends State<CustomOTPTextFiledBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: 54.h,
          width: 54.w,
          child: TextFormField(
            controller: widget.textEditingController,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            style: TextStyle(
                fontSize: 26.sp,
                fontWeight: FontWeight.w700,
                fontFamily: "Rubik",
                color: const Color(0xff96CCD5)),
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 17, vertical: 4.h),
              border: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xff677294),
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xffE76880),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

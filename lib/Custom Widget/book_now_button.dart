import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookNowButton extends StatelessWidget {
  final String? text;
  final Color? buttonColor;
  final Color? textColor;
  final double? height;
  final double? width;
  final double? fontSize;
  final GestureTapCallback onPressed;

  const BookNowButton({
    this.height,
    this.fontSize,
    this.buttonColor,
    this.textColor,
    this.width,
    required this.text,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width!.w,
      height: height!.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0.r),
          ),
        ),
        child: Text(
          text!,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
            fontWeight: FontWeight.w500,
            fontFamily: "Rubik",
          ),
        ),
      ),
    );
  }
}

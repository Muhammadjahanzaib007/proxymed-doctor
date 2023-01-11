import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../CustomContainer/CustomContainer.dart';
import '../../Provider/Provider.dart';
import '../../Share Preferences/Share Preferences.dart';
import '../PhoneVerification/PhoneVerification.dart';
import '../Sign Up Screen/signup_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  UserPreferences userPreferences = UserPreferences();
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      if (Provider.of<PrefsProvider>(context, listen: false).getloginStatus ==
          true) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const SignupScreen()));
      } else {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => PhoneVerification()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      widget: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
              // borderRadius: BorderRadius.circular(200),
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/logo-valuer.png",
                ),
              ),
            ),
            // child: Image.asset(
            //   "images/tech.jpg",
            //   height: 210.h,
            //   width: 202.w,
            // ),
          ),
        ),
      ),
    );
  }
}

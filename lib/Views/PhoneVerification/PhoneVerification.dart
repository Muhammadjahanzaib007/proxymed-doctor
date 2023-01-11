import 'package:country_list_pick/country_list_pick.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../Controllers/auth_controller.dart';
import '../../Custom Widget/CustomTextFormFiled/CustomTextFormFiled.dart';
import '../../Custom Widget/button.dart';
import '../../Custom Widget/custom_text.dart';
import '../../CustomContainer/CustomContainer.dart';
import '../../Share Preferences/Share Preferences.dart';
import '../LoginScreen/LoginScreen.dart';
import '../Sign Up Screen/signup_screen.dart';

enum MobileVerificationState {
  SHOW_MOBILE_FORM_STATE,
  SHOW_OTP_FORM_STATE,
}

class PhoneVerification extends StatefulWidget {
  PhoneVerification({Key? key}) : super(key: key);
  static final auth = Get.find<AuthController>();

  @override
  State<PhoneVerification> createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {
  bool showLoading = false;

  String? code;

  String? verificationId;
  TextEditingController otpController = TextEditingController();
  TextEditingController phoneTextEditingController = TextEditingController();
  CountryCode? countryCode;
  MobileVerificationState currentState =
      MobileVerificationState.SHOW_MOBILE_FORM_STATE;
  UserPreferences userPreferences = UserPreferences();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String? phoneNumber;
  getMobileFormWidget(context) {
    return CustomContainer(
      widget: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 26.0.w, right: 26.0.w),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 40),
                    child: Image.asset(
                      "assets/images/opt.png",
                    ),
                  ),
                  const CustomText(
                    text: "Verification",
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 80),
                    child: CustomText(
                      text: "Enter your mobile number. We will send your a\n"
                          "Verification code via SMS",
                      fontSize: 12,
                      textAlign: TextAlign.center,
                      fontColor: const Color(0xff000000).withOpacity(.4),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 55.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: const Color(0xffC0C0C0).withOpacity(0.16),
                            )),
                        child: CountryListPick(
                          pickerBuilder: (context, CountryCode? countryCode) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  countryCode!.flagUri!,
                                  package: 'country_list_pick',
                                  height: 20.h,
                                  width: 15.w,
                                ),
                                Text(
                                  countryCode.dialCode!,
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 10),
                                ),
                                const Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Color(0xff7F8492),
                                  size: 18,
                                )
                              ],
                            );
                          },
                          theme: CountryTheme(
                              isDownIcon: true, isShowTitle: false),
                          initialSelection: '+92',
                          onChanged: (CountryCode? code) {
                            countryCode = code;
                          },
                        ),
                        //
                      ),
                      SizedBox(
                        width: 210.w,
                        child: TextFormField(
                          controller: phoneTextEditingController,
                          cursorColor: const Color(0xff5AD6FE),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color:
                                      const Color(0xffC0C0C0).withOpacity(0.16),
                                )),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color:
                                    const Color(0xffC0C0C0).withOpacity(0.16),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color:
                                    const Color(0xffC0C0C0).withOpacity(0.16),
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                )),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                )),
                            contentPadding: EdgeInsets.only(
                                top: 4.h, bottom: 4.h, left: 15.w, right: 10.w),
                            hintText: "(525)333-1254",
                            hintStyle: TextStyle(
                                fontFamily: "DM Sans",
                                color: const Color(0xffC0C0C0),
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50, bottom: 50),
                    child: MyCustomButton(
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>OTPScreen(verificationId: "", phoneNumber: "")));

                        if (phoneTextEditingController.text.isEmpty) {
                          snackBarShow(context, "Please Enter Phone Number");
                        } else {
                          _verifyPhoneNumber();
                          setState(() {
                            showLoading = true;
                          });
                        }
                      },
                      height: 54.h,
                      width: double.infinity.w,
                      buttonColor: Color(0xffE76880),
                      text: "Get Code",
                      textColor: Color(0xffFFFFFF),
                      fontSize: 18.sp,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: "Have an account?",
                        fontColor: Color(0xff96CCD5),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(LoginScreen());
                        },
                        child: CustomText(
                          text: " Log in",
                          fontColor: Color(0xff96CCD5),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }

  getOtpFormWidget(context) {
    return CustomContainer(
      widget: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 26.0.w, right: 26.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 40),
                    child: Image.asset(
                      "assets/images/opt.png",
                    ),
                  ),
                  const CustomText(
                    text: "Verification",
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 80),
                    child: CustomText(
                      text: "You will get a code via SMS\n"
                          "to $phoneNumber",
                      fontSize: 12,
                      textAlign: TextAlign.center,
                      fontColor: const Color(0xff000000).withOpacity(.4),
                    ),
                  ),
                  CustomTextFormFiled(
                    controller: otpController,
                    hintText: "*****",
                    textAlign: TextAlign.center,
                    textInputType: TextInputType.visiblePassword,
                  ),
                  SizedBox(
                    height: 90.h,
                  ),
                  Container(
                    height: 54.h,
                    width: double.infinity.w,
                    child: MyCustomButton(
                      onPressed: () {
                        final code = otpController.text;
                        final credential = PhoneAuthProvider.credential(
                            verificationId: verificationId!, smsCode: code);
                        signInWithPhoneAuthCredential(credential);
                        setState(() {
                          // isLoading=true;
                        });
                      },
                      height: 54.h,
                      width: double.infinity.w,
                      buttonColor: Color(0xffE76880),
                      text: "Continue",
                      textColor: Color(0xffFFFFFF),
                      fontSize: 18.sp,
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Do not Received the Verification code?",
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Rubik",
                                color: const Color(0xff000000))),
                        InkWell(
                          onTap: () {
                            _verifyPhoneNumber();
                          },
                          child: Text(
                            " Resend again",
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Rubik",
                                color: const Color(0xff1D69A6)),
                          ),
                        ),
                      ],
                    )

                        // RichText(
                        //   text: TextSpan(
                        //       text: "Do not Received the Verification code?",
                        //       style: TextStyle(
                        //           fontSize: 12.sp,
                        //           fontWeight: FontWeight.w400,
                        //           fontFamily: "Rubik",
                        //           color: const Color(0xff000000)),
                        //       children: [
                        //         TextSpan(
                        //           text: " Resend again",
                        //           style: TextStyle(
                        //               fontSize: 12.sp,
                        //               fontWeight: FontWeight.w600,
                        //               fontFamily: "Rubik",
                        //               color: const Color(0xff1D69A6)),
                        //         ),
                        //       ]),
                        // ),
                        ),
                  )
                ],
              ),
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return showLoading
        ? const SpinKitSpinningLines(
            color: Color(0xffE76880),
          )
        : Scaffold(
            body: currentState == MobileVerificationState.SHOW_MOBILE_FORM_STATE
                ? getMobileFormWidget(context)
                : getOtpFormWidget(context),
          );
  }
  // Widget build(BuildContext context) {
  //   return CustomContainer(
  //     widget: Scaffold(
  //         backgroundColor: Colors.transparent,
  //         body: SingleChildScrollView(
  //           child: Padding(
  //             padding: EdgeInsets.only(left: 26.0.w, right: 26.0.w),
  //             child: Column(
  //               children: [
  //                 Padding(
  //                   padding: const EdgeInsets.only(top: 30, bottom: 40),
  //                   child: Image.asset("assets/Images/PhoneVerification.png"),
  //                 ),
  //                 const CustomText(
  //                   text: "Verification",
  //                   fontWeight: FontWeight.w500,
  //                   fontSize: 20,
  //                 ),
  //                 Padding(
  //                   padding: const EdgeInsets.only(top: 20, bottom: 80),
  //                   child: CustomText(
  //                     text: "Enter your mobile number. We will send your a\n"
  //                         "Verification code via SMS",
  //                     fontSize: 12,
  //                     textAlign: TextAlign.center,
  //                     color: const Color(0xff000000).withOpacity(.4),
  //                   ),
  //                 ),
  //                 Row(
  //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                   children: [
  //                     Container(
  //                       height: 55.h,
  //                       width: 100.w,
  //                       decoration: BoxDecoration(
  //                           borderRadius: BorderRadius.circular(10),
  //                           border: Border.all(
  //                             color: const Color(0xffC0C0C0).withOpacity(0.16),
  //                           )),
  //                       child: CountryListPick(
  //                         pickerBuilder: (context, CountryCode? countryCode) {
  //                           return Row(
  //                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                             crossAxisAlignment: CrossAxisAlignment.center,
  //                             children: [
  //                               Image.asset(
  //                                 countryCode!.flagUri!,
  //                                 package: 'country_list_pick',
  //                                 height: 20.h,
  //                                 width: 15.w,
  //                               ),
  //                               Text(
  //                                 countryCode.dialCode!,
  //                                 style: const TextStyle(
  //                                     color: Colors.black, fontSize: 10),
  //                               ),
  //                               const Icon(
  //                                 Icons.keyboard_arrow_down,
  //                                 color: Color(0xff7F8492),
  //                                 size: 18,
  //                               )
  //                             ],
  //                           );
  //                         },
  //                         theme: CountryTheme(
  //                             isDownIcon: true, isShowTitle: false),
  //                         initialSelection: '+92',
  //                         onChanged: (CountryCode? code) {
  //                           countryCode = code;
  //                         },
  //                       ),
  //                       //
  //                     ),
  //                     SizedBox(
  //                       width: 210.w,
  //                       child: TextFormField(
  //                         controller: phoneTextEditingController,
  //                         cursorColor: const Color(0xff5AD6FE),
  //                         keyboardType: TextInputType.number,
  //                         decoration: InputDecoration(
  //                           disabledBorder: OutlineInputBorder(
  //                               borderRadius: BorderRadius.circular(10),
  //                               borderSide: BorderSide(
  //                                 color:
  //                                     const Color(0xffC0C0C0).withOpacity(0.16),
  //                               )),
  //                           enabledBorder: OutlineInputBorder(
  //                             borderRadius: BorderRadius.circular(10),
  //                             borderSide: BorderSide(
  //                               color:
  //                                   const Color(0xffC0C0C0).withOpacity(0.16),
  //                             ),
  //                           ),
  //                           focusedBorder: OutlineInputBorder(
  //                             borderRadius: BorderRadius.circular(10),
  //                             borderSide: BorderSide(
  //                               color:
  //                                   const Color(0xffC0C0C0).withOpacity(0.16),
  //                             ),
  //                           ),
  //                           focusedErrorBorder: OutlineInputBorder(
  //                               borderRadius: BorderRadius.circular(10),
  //                               borderSide: const BorderSide(
  //                                 color: Colors.red,
  //                               )),
  //                           errorBorder: OutlineInputBorder(
  //                               borderRadius: BorderRadius.circular(10),
  //                               borderSide: const BorderSide(
  //                                 color: Colors.red,
  //                               )),
  //                           contentPadding: EdgeInsets.only(
  //                               top: 4.h, bottom: 4.h, left: 15.w, right: 10.w),
  //                           hintText: "(525)333-1254",
  //                           hintStyle: TextStyle(
  //                               fontFamily: "DM Sans",
  //                               color: const Color(0xffC0C0C0),
  //                               fontWeight: FontWeight.w400,
  //                               fontSize: 14.sp),
  //                         ),
  //                       ),
  //                     )
  //                   ],
  //                 ),
  //                 Padding(
  //                   padding: const EdgeInsets.only(top: 50, bottom: 50),
  //                   child: CustomButton(
  //                     text: "Get Code",
  //                     onPressed: () {
  //                       Navigator.push(
  //                           context,
  //                           MaterialPageRoute(
  //                               builder: (context) => const OTPVerification()));
  //                     },
  //                   ),
  //                 ),
  //                 const CustomText(
  //                   text: "Have an account? Log in",
  //                   fontSize: 12,
  //                   color: Color(0xff96CCD5),
  //                 )
  //               ],
  //             ),
  //           ),
  //         )),
  //   );
  // }

  Future<void> _verifyPhoneNumber() async {
    if (countryCode == null) {
      code = "+92";
    } else {
      code = countryCode.toString();
    }
    phoneNumber = code! + phoneTextEditingController.text;
    print(phoneNumber);
    await _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        timeout: const Duration(seconds: 59),
        verificationCompleted: (_) {
          setState(() {
            showLoading = false;
          });
          print(_.toString());
        },
        verificationFailed: (e) {
          setState(() {
            showLoading = false;
          });
          if (e.code == 'invalid-phone-number') {
            snackBarShow(context, "The Provided number is not valid");
          } else {
            snackBarShow(context, "Something went wrong. Try again.");
          }
        },
        codeSent: (String verificationI, int? code) {
          setState(() {
            showLoading = false;
          });
          verificationId = verificationI;
          currentState = MobileVerificationState.SHOW_OTP_FORM_STATE;
        },
        codeAutoRetrievalTimeout: (e) {
          setState(() {
            showLoading = false;
          });
        });
  }

  Future<void> signInWithPhoneAuthCredential(
      PhoneAuthCredential phoneAuthCredential) async {
    setState(() {
      showLoading = true;
    });

    try {
      final authCredential =
          await _auth.signInWithCredential(phoneAuthCredential);
      setState(() {
        showLoading = false;
      });
      if (authCredential.user != null) {
        // ignore: use_build_context_synchronously
        userPreferences.setLoginStatus(true);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const SignupScreen()),
        );
      }
    } on FirebaseAuthException catch (e) {
      setState(() {
        showLoading = false;
      });
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.message.toString())));
    }
  }

  void snackBarShow(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }
}

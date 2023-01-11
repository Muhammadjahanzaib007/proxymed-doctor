// ignore_for_file: unnecessary_null_comparison

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Models/user_data.dart';
import '../Views/LoginScreen/LoginScreen.dart';
import '../Views/Navigation Bar/navigationbar.dart';
import '../Views/PhoneVerification/PhoneVerification.dart';
import '../api/api_client.dart';
import '../utils/app_constants.dart';
import '../utils/functions.dart';

class AuthController extends GetxController {
  late SharedPreferences prefs;
  TextEditingController nameCont = TextEditingController(text: "");
  TextEditingController phoneCont = TextEditingController(text: "");
  TextEditingController emailCont = TextEditingController(text: "");
  TextEditingController passCont = TextEditingController(text: '');
  String? token;
  RxBool loading = false.obs;
  UserData? user;
  ApiClient api = ApiClient(appBaseUrl: baseUrl);

  @override
  Future<void> onInit() async {
    super.onInit();
    prefs = await SharedPreferences.getInstance();
  }

  Future getuserDetail() async {
    tokenMain = prefs.getString(AppConstants().token);
    token = prefs.getString(AppConstants().token);
    api.updateHeader(token ?? "");
    print(jsonDecode(prefs.getString(AppConstants().userdata)!));
    try {
      user = UserData.fromJson(
          jsonDecode(prefs.getString(AppConstants().userdata)!));
    } catch (e) {
      Get.offAll(LoginScreen());
      print(e);
    }
    update();
  }

  Future<Widget> checkUserLoggedIn() async {
    final SharedPreferences prefss = await SharedPreferences.getInstance();
    bool isLogin = (prefss.get(AppConstants().userdata) == null ? false : true);
    if (isLogin) {
      await getuserDetail();
      return const Navigationbar();
    } else {
      return PhoneVerification();
    }
  }

  Future signUp() async {
    loading.value = true;
    Response response = await api.postData(
      "api/signUp",
      {
        "name": nameCont.text,
        "phone": passCont.text,
        "email": emailCont.text,
        "password": passCont.text,
        "role_id": 2,
      },
    );
    if (response == null) {
      errorAlert('Check your internet connection.');
    } else if (response.statusCode == 200) {
      Get.offAll(LoginScreen());
    } else {
      errorAlert('Something went wrong\nPlease try again!');
    }
    loading.value = false;
  }

  Future login() async {
    loading.value = true;
    Response response = await api.postData(
      "api/login",
      {
        "email": emailCont.text,
        "password": passCont.text,
      },
    );
    if (response == null) {
      errorAlert('Check your internet connection.');
    } else if (response.statusCode == 200) {
      await prefs.setString(
          AppConstants().token, response.body["access_token"]);
      onLoginSuccess(response.body);
    } else {
      errorAlert('Something went wrong\nPlease try again!');
    }
    loading.value = false;
  }

  void onLoginSuccess(Map<String, dynamic> value) async {
    await prefs.setString(AppConstants().userdata, jsonEncode(value));
    await getuserDetail();
    update();
    Get.offAll(Navigationbar());
  }

  Future<void> logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(AppConstants().token);
    prefs.remove(AppConstants().userdata);
    Get.offAll(() => const LoginScreen());
  }
}

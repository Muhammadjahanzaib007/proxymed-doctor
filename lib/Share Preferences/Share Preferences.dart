import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static const _loginStatus = 'loginSta';
  setLoginStatus(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(_loginStatus, value);
  }

  Future<bool> getLoginStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_loginStatus) ?? false;
  }
}

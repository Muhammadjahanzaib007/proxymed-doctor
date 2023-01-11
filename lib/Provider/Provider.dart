import 'package:flutter/material.dart';

import '../Share Preferences/Share Preferences.dart';

class PrefsProvider with ChangeNotifier {
  UserPreferences userPreferences = UserPreferences();
  bool _loginStatus = false;

  bool get getloginStatus => _loginStatus;

  set setLoginStatus(bool value) {
    _loginStatus = value;
    userPreferences.setLoginStatus(value);
    notifyListeners();
  }
}

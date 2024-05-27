//ignore: unused_import
import 'dart:convert';
import 'dart:developer';
import 'package:shared_preferences/shared_preferences.dart';

class PrefUtils {
  static SharedPreferences? _sharedPreferences;

  PrefUtils() {
    // init();
    SharedPreferences.getInstance().then((value) {
      _sharedPreferences = value;
    });
  }

  Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    log('SharedPreference Initialized');
  }

  ///will clear all the data stored in preference
  static Future<bool> clearPreferencesData() async {
    return _sharedPreferences!.clear();
  }

  Future<void> setThemeData(String value) {
    return _sharedPreferences!.setString('themeData', value);
  }

  static Future<void> setTokenData(String value) {
    return _sharedPreferences!.setString('token', value);
  }

  static String? getTokenData() {
    try {
      return _sharedPreferences!.getString('token');
    } catch (e) {
      return null;
    }
  }

  static Future<void> setRefreshTokenData(String value) {
    return _sharedPreferences!.setString('refreshToken', value);
  }

  static String? getRefreshTokenData() {
    try {
      return _sharedPreferences!.getString('refreshToken');
    } catch (e) {
      return null;
    }
  }

  // String getThemeData() {
  //   try {
  //     return _sharedPreferences!.getString('themeData')!;
  //   } catch (e) {
  //     return 'primary';
  //   }
  // }
}

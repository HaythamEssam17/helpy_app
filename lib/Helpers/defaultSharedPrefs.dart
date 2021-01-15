import 'package:shared_preferences/shared_preferences.dart';

class DefaultSharedPrefs {
  static Future<bool> saveUserID(String userID) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString('userID', userID);
  }

  static Future<bool> saveMarketName(String marketName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString('marketName', marketName);
  }

  static Future<bool> saveUserName(String username) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString('userName', username);
  }

  static Future<bool> saveUserEmail(String userEmail) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString('userEmail', userEmail);
  }

  static Future<bool> saveUserPhone(String phone) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString('phone', phone);
  }

  static Future<bool> saveUserPassword(String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString('password', password);
  }

  static Future<bool> saveUserCity(String city) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString('city', city);
  }

  static Future<bool> saveUserStreet(String street) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString('street', street);
  }

  static Future<bool> saveIsLogged(bool isLogged) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setBool('isLogged', isLogged);
  }

  static Future<bool> saveUserRole(String role) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString('role', role);
  }

  static Future<bool> saveUserData(String userData) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString('userData', userData);
  }
}

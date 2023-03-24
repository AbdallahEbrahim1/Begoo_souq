import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences prefs;

  static init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static Future<bool> saveToken(String token) async {
    return await prefs.setString("token", token);
  }

  static String getToken() {
    return prefs.getString("token") ?? "";
  }

  static Future<bool> removeToken() {
    return prefs.remove("token");
  }

  static Future<bool> saveName(String name) async {
    return await prefs.setString("name", name);
  }

  static String getName() {
    return prefs.getString("name") ?? "";
  }

  static Future<bool> saveEmail(String email) async {
    return await prefs.setString("email", email);
  }

  static String getEmail() {
    return prefs.getString("email") ?? "unknown@gmail.com";
  }

  static Future<bool> savePhone(String phone) async {
    return await prefs.setString("phone", phone);
  }

  static String getPhone() {
    return prefs.getString("phone") ?? "010000000";
  }

  static Future<bool> saveIdCountry(int id) async {
    return await prefs.setInt("idCountry", id);
  }

  static String getIdCountry() {
    return prefs.getString("country") ?? "";
  }

  static Future<bool> clear() {
    return prefs.clear();
  }
}

import 'package:shared_preferences/shared_preferences.dart';

class AppPrefs {
  static Future<bool> saveServerAuthCode(String value) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.setString('auth-code', value);
  }

  static Future<bool> saveToken(String value) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.setString('token', value);
  }

  static Future<String> getStringToken() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    return '$token';
  }

  static Future<bool> removeStringToken() async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.remove('token');
  }
}

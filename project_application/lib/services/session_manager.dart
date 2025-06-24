import 'package:shared_preferences/shared_preferences.dart';

class SessionManager {
  static Future<void> saveUserSession(String nombreUsuario) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('user', nombreUsuario);
  }

  static Future<String?> getUserSession() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('user');
  }

  static Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('user');
  }
}

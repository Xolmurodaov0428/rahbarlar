import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static Future<void> saveUserData({
    required String ism,
    required String familya,
    required String email,
    required String parol,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('ism', ism);
    await prefs.setString('familya', familya);
    await prefs.setString('email', email);
    await prefs.setString('parol', parol);
  }

  static Future<Map<String, String?>> getUserData() async {
    final prefs = await SharedPreferences.getInstance();
    return {
      'ism': prefs.getString('ism'),
      'familya': prefs.getString('familya'),
      'email': prefs.getString('email'),
      'parol': prefs.getString('parol'),
    };
  }
}

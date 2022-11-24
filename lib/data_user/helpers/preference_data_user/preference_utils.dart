import 'package:shared_preferences/shared_preferences.dart';

class PreferenceUtils {

  //String data
  static Future setString(String key, String value) async {
    final preference = await SharedPreferences.getInstance();
    return preference.setString(key, value);
  }

  static Future getString(String key) async {
    final preference = await SharedPreferences.getInstance();
    preference.getString(key);
  }
//bool data
  static Future setBool(String key, bool value) async {
    final preference = await SharedPreferences.getInstance();
    return preference.setBool(key, value);
  }
  static Future getBool(String key) async {
    final preference = await SharedPreferences.getInstance();
    preference.getBool(key);
  }
  //double data
  static Future setDouble(String key, double value)async{
    final preference = await SharedPreferences.getInstance();
    return preference.setDouble(key, value);
  }
  static Future getDouble(String key)async{
    final preference = await SharedPreferences.getInstance();
    preference.getDouble(key);
  }
//int data
  static Future setInt(String key, int value)async{
    final preference = await SharedPreferences.getInstance();
    return preference.setInt(key, value);
  }
  static Future getInt(String key)async{
    final preference = await SharedPreferences.getInstance();
    preference.getInt(key);
  }

}

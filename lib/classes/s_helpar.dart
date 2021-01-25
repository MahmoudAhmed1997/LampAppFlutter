
// ignore: camel_case_types
import 'package:shared_preferences/shared_preferences.dart';

class S_Helper {
  S_Helper._();
  static S_Helper s_helper = S_Helper._();

  SharedPreferences sharedPreferences;

  Future<SharedPreferences> initSharedPrefrences() async {
    if (sharedPreferences == null) {
      sharedPreferences = await SharedPreferences.getInstance();
      return sharedPreferences;
    } else {
      return sharedPreferences;
    }
  }

  addNew(String key, String value) async {
    sharedPreferences = await initSharedPrefrences();
    sharedPreferences.setString(key, value);
  }

  Future<String> getValue(String key) async {
    sharedPreferences = await initSharedPrefrences();
    String x = sharedPreferences.getString(key);
    return x; 
    
  }

  // Future<bool> getBool(String key) async {
  //   sharedPreferences = await initSharedPrefrences();
  //   bool x =  sharedPreferences.getBool(key);
  //   return x;
  // }

  // setBool() async {
  //   sharedPreferences = await initSharedPrefrences();
  //   sharedPreferences.setBool('first', true);
  // }
  
}

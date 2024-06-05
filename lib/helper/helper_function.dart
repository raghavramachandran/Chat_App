import 'package:shared_preferences/shared_preferences.dart';

class helperfunction {
  static String userLoggedinKey = "LOGGEDIN";
  static String usernamekey = "usernamekey";
  static String userEmailkey = "useremailkey";

  static Future<bool?> getUserLoggedInStatus() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getBool(userLoggedinKey);
  }
}

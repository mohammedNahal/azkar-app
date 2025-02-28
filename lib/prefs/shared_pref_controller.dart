import 'package:shared_preferences/shared_preferences.dart';
import 'package:testflutter/azkar_app/pref_keys.dart';

class SharedPrefController {
  SharedPrefController._internal();

  static final SharedPrefController _instance =
      SharedPrefController._internal();
  late SharedPreferences _sharedPref;

  factory SharedPrefController() {
    // return SharedPrefController._(); -OR- instance
    return _instance;
  }

  Future<void> initSharedPref() async {
    _sharedPref = await SharedPreferences.getInstance();
  }

  Future<void> saveLoggedInInfo({required String emailAddress}) async {
    await _sharedPref.setString(PrefKey.email.toString(), emailAddress);
    await _sharedPref.setBool(PrefKey.loggedIn.toString(), true);
  }

  bool get isLoggedIn =>
      _sharedPref.getBool(PrefKey.loggedIn.toString()) ?? false;

  String get theEmail => _sharedPref.getString(PrefKey.email.toString()) ?? 'no email.';

  Future<void> logout() async {
    await _sharedPref.setString(PrefKey.email.toString(), '');
    await _sharedPref.setBool(PrefKey.loggedIn.toString(), false);
  }
  Future<void> clearAllSavedData()async{
    await _sharedPref.clear();
  }
}

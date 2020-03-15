import 'package:shared_preferences/shared_preferences.dart';


class SharedPreferencesWrapper {
  SharedPreferencesWrapper._();

  static const _resultKey = 'result_key';

  SharedPreferences _sharedPreferences;

  static Future<SharedPreferencesWrapper> getInstance() async {
    return SharedPreferencesWrapper._()
      .._sharedPreferences = await SharedPreferences.getInstance();
  }

  void saveLastResult(int result) {
    _sharedPreferences.setInt(_resultKey, result);
  }

  int getLastSavedResult() {
    return _sharedPreferences.getInt(_resultKey);
  }
}

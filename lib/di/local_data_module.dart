
import 'package:injectable/injectable.dart';
import 'package:my_flutter_template/resources/shared_preferences/shared_preferences_wrapper.dart';

@registerModule
abstract class LocalDataModule {
  @preResolve
  Future<SharedPreferencesWrapper> get prefs => SharedPreferencesWrapper.getInstance();
}
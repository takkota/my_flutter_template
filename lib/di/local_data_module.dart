
import 'package:injectable/injectable.dart';
import 'package:tecomm/resources/shared_preferences/shared_preferences_wrapper.dart';

@registerModule
abstract class LocalDataModule {
  @preResolve
  Future<SharedPreferencesWrapper> get prefs => SharedPreferencesWrapper.getInstance();
}
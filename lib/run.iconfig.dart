// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart';
import 'package:tecomm/di/http_module.dart';
import 'package:tecomm/resources/api/rest_client.dart';
import 'package:tecomm/resources/shared_preferences/shared_preferences_wrapper.dart';
import 'package:tecomm/di/local_data_module.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tecomm/di/ui_module.dart';
import 'package:get_it/get_it.dart';

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final httpModule = _$HttpModule();
  final localDataModule = _$LocalDataModule();
  final uiModule = _$UiModule();
  g.registerFactory<Dio>(() => httpModule.dio);
  g.registerFactory<RestClient>(() => httpModule.restClient);
  final sharedPreferencesWrapper = await localDataModule.prefs;
  g.registerFactory<SharedPreferencesWrapper>(() => sharedPreferencesWrapper);
  g.registerFactory<GlobalKey<NavigatorState>>(() => uiModule.navigatorKey);
}

class _$HttpModule extends HttpModule {}

class _$LocalDataModule extends LocalDataModule {}

class _$UiModule extends UiModule {}

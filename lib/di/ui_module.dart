
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@registerModule
abstract class UiModule {
  final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();
}


import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@module
abstract class UiModule {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}

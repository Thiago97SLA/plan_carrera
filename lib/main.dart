import 'package:flutter/material.dart';
import 'package:plancarrera/app.dart';
import 'package:plancarrera/core/di/injector.dart';
import 'package:plancarrera/core/shared_preferences/preferences_repository_service.dart';

void main() async {
  await setUpAppScope();
  runApp(const MyApp());
}

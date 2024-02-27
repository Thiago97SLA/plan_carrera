import 'package:flutter/material.dart';
import 'package:plancarrera/app.dart';
import 'package:plancarrera/core/di/injector.dart';

void main() async {
  await setUpAppScope();
  runApp(const MyApp());
}

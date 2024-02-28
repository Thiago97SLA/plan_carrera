import 'dart:convert';

import 'package:plancarrera/core/shared_preferences/preference_repository_service_impl.dart';
import 'package:plancarrera/feature/home/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceRepositoryService implements PreferenceRepositoryImpl {
  static const String _user = 'user';
  static const String _isSaveUser = 'isSaveUser';
  static const String _awaitUser = 'awaitUser';
  static const String _isawaitUser = 'isAwaitUser';

  late SharedPreferences _prefs;
  @override
  SharedPreferences get prefs => _prefs;

  @override
  Future<void> initialize() async {
    _prefs = await SharedPreferences.getInstance();
  }

  @override
  UserModel? getUser() {
    try {
      final user = UserModel.fromJson(jsonDecode(_prefs.getString(_user) ?? ''));
      return user;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<void> saveUser(UserModel? user) async {
    await _prefs.setString(_user, jsonEncode(user));
  }

  @override
  bool isSaveUser() {
    final isSaveUser = _prefs.getBool(_isSaveUser);
    return isSaveUser ?? false;
  }

  @override
  Future<void> saveisSaveUser(bool value) async {
    await _prefs.setBool(_isSaveUser, value);
  }

  @override
  int? awaitUser() {
    try {
      final awaitUser = _prefs.getInt(_awaitUser);
      return awaitUser;
    } catch (e) {
      return null;
    }
  }

  @override
  bool isAwaitUser() {
    final isSaveUser = _prefs.getBool(_isawaitUser);
    return isSaveUser ?? false;
  }

  @override
  Future<void> saveAwaitUser(int awaitUser) async {
    await _prefs.setString(_awaitUser, jsonEncode(awaitUser));
  }

  @override
  Future<void> saveIsAwaitUser(bool value) async {
    await _prefs.setBool(_isawaitUser, value);
  }
}

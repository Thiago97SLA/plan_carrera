import 'package:plancarrera/feature/home/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class PreferenceRepositoryImpl {
  SharedPreferences get prefs;
  void initialize();
  Future<void> saveUser(UserModel user);
  UserModel? getUser();
  bool isSaveUser();
  Future<void> saveisSaveUser(bool value);
  bool isAwaitUser();
  Future<void> saveIsAwaitUser(bool value);
  Future<void> saveAwaitUser(int user);
  int? awaitUser();
}

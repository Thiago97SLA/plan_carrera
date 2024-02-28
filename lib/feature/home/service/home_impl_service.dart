import 'package:plancarrera/feature/home/models/user_model.dart';

abstract class ImplHomeService {
  Future<UserModel> getUser();
  Future<UserModel> updateUser({required int steps});
}

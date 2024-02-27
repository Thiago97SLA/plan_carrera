import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  @JsonSerializable()
  factory UserModel({
    required String name,
    required int stepsCounter,
    required int stepsGoal,
    required int caloriesGoal,
    required int caloriesCounter,
    required int waterGoal,
    required int waterCounter,
    required int heartRate,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

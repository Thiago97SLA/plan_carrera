import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:plancarrera/feature/home/models/user_model.dart';

part 'shared_preference_model.freezed.dart';
part 'shared_preference_model.g.dart';

@freezed
class SharedPreferenceModel with _$SharedPreferenceModel {
  @JsonSerializable()
  const factory SharedPreferenceModel({
    @Default(true) final bool user,
  }) = _SharedPreferenceModel;

  factory SharedPreferenceModel.fromJson(Map<String, dynamic> json) =>
      _$SharedPreferenceModelFromJson(json);
}

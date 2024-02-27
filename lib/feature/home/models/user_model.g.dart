// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      name: json['name'] as String,
      stepsCounter: json['stepsCounter'] as int,
      stepsGoal: json['stepsGoal'] as int,
      caloriesGoal: json['caloriesGoal'] as int,
      caloriesCounter: json['caloriesCounter'] as int,
      waterGoal: json['waterGoal'] as int,
      waterCounter: json['waterCounter'] as int,
      heartRate: json['heartRate'] as int,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'stepsCounter': instance.stepsCounter,
      'stepsGoal': instance.stepsGoal,
      'caloriesGoal': instance.caloriesGoal,
      'caloriesCounter': instance.caloriesCounter,
      'waterGoal': instance.waterGoal,
      'waterCounter': instance.waterCounter,
      'heartRate': instance.heartRate,
    };

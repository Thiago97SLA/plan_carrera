// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get name => throw _privateConstructorUsedError;
  int get stepsCounter => throw _privateConstructorUsedError;
  int get stepsGoal => throw _privateConstructorUsedError;
  int get caloriesGoal => throw _privateConstructorUsedError;
  int get caloriesCounter => throw _privateConstructorUsedError;
  int get waterGoal => throw _privateConstructorUsedError;
  int get waterCounter => throw _privateConstructorUsedError;
  int get heartRate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String name,
      int stepsCounter,
      int stepsGoal,
      int caloriesGoal,
      int caloriesCounter,
      int waterGoal,
      int waterCounter,
      int heartRate});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? stepsCounter = null,
    Object? stepsGoal = null,
    Object? caloriesGoal = null,
    Object? caloriesCounter = null,
    Object? waterGoal = null,
    Object? waterCounter = null,
    Object? heartRate = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      stepsCounter: null == stepsCounter
          ? _value.stepsCounter
          : stepsCounter // ignore: cast_nullable_to_non_nullable
              as int,
      stepsGoal: null == stepsGoal
          ? _value.stepsGoal
          : stepsGoal // ignore: cast_nullable_to_non_nullable
              as int,
      caloriesGoal: null == caloriesGoal
          ? _value.caloriesGoal
          : caloriesGoal // ignore: cast_nullable_to_non_nullable
              as int,
      caloriesCounter: null == caloriesCounter
          ? _value.caloriesCounter
          : caloriesCounter // ignore: cast_nullable_to_non_nullable
              as int,
      waterGoal: null == waterGoal
          ? _value.waterGoal
          : waterGoal // ignore: cast_nullable_to_non_nullable
              as int,
      waterCounter: null == waterCounter
          ? _value.waterCounter
          : waterCounter // ignore: cast_nullable_to_non_nullable
              as int,
      heartRate: null == heartRate
          ? _value.heartRate
          : heartRate // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int stepsCounter,
      int stepsGoal,
      int caloriesGoal,
      int caloriesCounter,
      int waterGoal,
      int waterCounter,
      int heartRate});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? stepsCounter = null,
    Object? stepsGoal = null,
    Object? caloriesGoal = null,
    Object? caloriesCounter = null,
    Object? waterGoal = null,
    Object? waterCounter = null,
    Object? heartRate = null,
  }) {
    return _then(_$UserModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      stepsCounter: null == stepsCounter
          ? _value.stepsCounter
          : stepsCounter // ignore: cast_nullable_to_non_nullable
              as int,
      stepsGoal: null == stepsGoal
          ? _value.stepsGoal
          : stepsGoal // ignore: cast_nullable_to_non_nullable
              as int,
      caloriesGoal: null == caloriesGoal
          ? _value.caloriesGoal
          : caloriesGoal // ignore: cast_nullable_to_non_nullable
              as int,
      caloriesCounter: null == caloriesCounter
          ? _value.caloriesCounter
          : caloriesCounter // ignore: cast_nullable_to_non_nullable
              as int,
      waterGoal: null == waterGoal
          ? _value.waterGoal
          : waterGoal // ignore: cast_nullable_to_non_nullable
              as int,
      waterCounter: null == waterCounter
          ? _value.waterCounter
          : waterCounter // ignore: cast_nullable_to_non_nullable
              as int,
      heartRate: null == heartRate
          ? _value.heartRate
          : heartRate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  _$UserModelImpl(
      {required this.name,
      required this.stepsCounter,
      required this.stepsGoal,
      required this.caloriesGoal,
      required this.caloriesCounter,
      required this.waterGoal,
      required this.waterCounter,
      required this.heartRate});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String name;
  @override
  final int stepsCounter;
  @override
  final int stepsGoal;
  @override
  final int caloriesGoal;
  @override
  final int caloriesCounter;
  @override
  final int waterGoal;
  @override
  final int waterCounter;
  @override
  final int heartRate;

  @override
  String toString() {
    return 'UserModel(name: $name, stepsCounter: $stepsCounter, stepsGoal: $stepsGoal, caloriesGoal: $caloriesGoal, caloriesCounter: $caloriesCounter, waterGoal: $waterGoal, waterCounter: $waterCounter, heartRate: $heartRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.stepsCounter, stepsCounter) ||
                other.stepsCounter == stepsCounter) &&
            (identical(other.stepsGoal, stepsGoal) ||
                other.stepsGoal == stepsGoal) &&
            (identical(other.caloriesGoal, caloriesGoal) ||
                other.caloriesGoal == caloriesGoal) &&
            (identical(other.caloriesCounter, caloriesCounter) ||
                other.caloriesCounter == caloriesCounter) &&
            (identical(other.waterGoal, waterGoal) ||
                other.waterGoal == waterGoal) &&
            (identical(other.waterCounter, waterCounter) ||
                other.waterCounter == waterCounter) &&
            (identical(other.heartRate, heartRate) ||
                other.heartRate == heartRate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, stepsCounter, stepsGoal,
      caloriesGoal, caloriesCounter, waterGoal, waterCounter, heartRate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  factory _UserModel(
      {required final String name,
      required final int stepsCounter,
      required final int stepsGoal,
      required final int caloriesGoal,
      required final int caloriesCounter,
      required final int waterGoal,
      required final int waterCounter,
      required final int heartRate}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String get name;
  @override
  int get stepsCounter;
  @override
  int get stepsGoal;
  @override
  int get caloriesGoal;
  @override
  int get caloriesCounter;
  @override
  int get waterGoal;
  @override
  int get waterCounter;
  @override
  int get heartRate;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

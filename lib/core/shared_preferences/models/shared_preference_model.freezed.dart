// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shared_preference_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SharedPreferenceModel _$SharedPreferenceModelFromJson(
    Map<String, dynamic> json) {
  return _SharedPreferenceModel.fromJson(json);
}

/// @nodoc
mixin _$SharedPreferenceModel {
  bool get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SharedPreferenceModelCopyWith<SharedPreferenceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SharedPreferenceModelCopyWith<$Res> {
  factory $SharedPreferenceModelCopyWith(SharedPreferenceModel value,
          $Res Function(SharedPreferenceModel) then) =
      _$SharedPreferenceModelCopyWithImpl<$Res, SharedPreferenceModel>;
  @useResult
  $Res call({bool user});
}

/// @nodoc
class _$SharedPreferenceModelCopyWithImpl<$Res,
        $Val extends SharedPreferenceModel>
    implements $SharedPreferenceModelCopyWith<$Res> {
  _$SharedPreferenceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SharedPreferenceModelImplCopyWith<$Res>
    implements $SharedPreferenceModelCopyWith<$Res> {
  factory _$$SharedPreferenceModelImplCopyWith(
          _$SharedPreferenceModelImpl value,
          $Res Function(_$SharedPreferenceModelImpl) then) =
      __$$SharedPreferenceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool user});
}

/// @nodoc
class __$$SharedPreferenceModelImplCopyWithImpl<$Res>
    extends _$SharedPreferenceModelCopyWithImpl<$Res,
        _$SharedPreferenceModelImpl>
    implements _$$SharedPreferenceModelImplCopyWith<$Res> {
  __$$SharedPreferenceModelImplCopyWithImpl(_$SharedPreferenceModelImpl _value,
      $Res Function(_$SharedPreferenceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SharedPreferenceModelImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$SharedPreferenceModelImpl implements _SharedPreferenceModel {
  const _$SharedPreferenceModelImpl({this.user = true});

  factory _$SharedPreferenceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SharedPreferenceModelImplFromJson(json);

  @override
  @JsonKey()
  final bool user;

  @override
  String toString() {
    return 'SharedPreferenceModel(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SharedPreferenceModelImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SharedPreferenceModelImplCopyWith<_$SharedPreferenceModelImpl>
      get copyWith => __$$SharedPreferenceModelImplCopyWithImpl<
          _$SharedPreferenceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SharedPreferenceModelImplToJson(
      this,
    );
  }
}

abstract class _SharedPreferenceModel implements SharedPreferenceModel {
  const factory _SharedPreferenceModel({final bool user}) =
      _$SharedPreferenceModelImpl;

  factory _SharedPreferenceModel.fromJson(Map<String, dynamic> json) =
      _$SharedPreferenceModelImpl.fromJson;

  @override
  bool get user;
  @override
  @JsonKey(ignore: true)
  _$$SharedPreferenceModelImplCopyWith<_$SharedPreferenceModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

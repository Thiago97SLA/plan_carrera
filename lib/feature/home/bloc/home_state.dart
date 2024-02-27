part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.getUset(UserModel infoUser) = _GetUset;
  const factory HomeState.error(String messange) = _Error;
}

part of "home_bloc.dart";

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getUser() = _GetUser;
  const factory HomeEvent.upDateUser({required int steps}) = _UpdateUser;
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:plancarrera/core/shared_preferences/models/shared_preference_model.dart';
import 'package:plancarrera/core/shared_preferences/preferences_repository_service.dart';

part 'shared_preferences_event.dart';
part 'shared_preferences_state.dart';
part 'shared_preferences_bloc.freezed.dart';

class SharedPreferencesBloc extends Bloc<SharedPreferencesEvent, SharedPreferencesState> {
  final PreferenceRepositoryService _preferenceRepository;
  SharedPreferencesBloc({required PreferenceRepositoryService preferenceRepository})
      : _preferenceRepository = preferenceRepository,
        super(const SharedPreferencesState.setPreference(SharedPreferenceModel()));

  @override
  Stream<SharedPreferencesState> mapEventToState(
    SharedPreferencesEvent event,
  ) async* {
    yield* event.when(
      setPreference: _setPreference,
    );
  }

  Stream<SharedPreferencesState> _setPreference(SharedPreferenceModel model) async* {
    // await _preferenceRepository.saveSalaryActivation(model.isSalaryActivated);
    yield SharedPreferencesState.setPreference(model);
  }
}

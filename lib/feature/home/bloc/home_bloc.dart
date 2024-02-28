import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:plancarrera/core/di/injector.dart';
import 'package:plancarrera/core/shared_preferences/preferences_repository_service.dart';
import 'package:plancarrera/feature/home/models/user_model.dart';
import 'package:plancarrera/feature/home/service/home_impl_service.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ImplHomeService implHomeService;

  HomeBloc(this.implHomeService) : super(const HomeState.initial());

  Stream<HomeState> get authStateStream async* {
    yield state;
    yield* stream;
  }

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    yield* event.when(
      getUser: _getUser,
      upDateUser: _updateUser,
    );
  }

  Stream<HomeState> _getUser() async* {
    yield const HomeState.initial();
    try {
      final response = await implHomeService.getUser();
      getIt<PreferenceRepositoryService>().saveUser(null);
      getIt<PreferenceRepositoryService>().saveIsAwaitUser(false);
      getIt<PreferenceRepositoryService>().saveisSaveUser(true);
      getIt<PreferenceRepositoryService>().saveUser(response);
      yield HomeState.getUset(response);
    } catch (e) {
      yield HomeState.error('$e');
    }
  }

  Stream<HomeState> _updateUser(int steps) async* {
    yield const HomeState.initial();

    try {
      int newsteps = steps;
      if (getIt<PreferenceRepositoryService>().isAwaitUser()) {
        newsteps = getIt<PreferenceRepositoryService>().awaitUser() ?? 0;
      }
      final response = await implHomeService.updateUser(steps: newsteps);
      getIt<PreferenceRepositoryService>().saveIsAwaitUser(false);
      getIt<PreferenceRepositoryService>().saveisSaveUser(true);
      getIt<PreferenceRepositoryService>().saveUser(response);

      yield HomeState.updateUset(response);
    } catch (e) {
      getIt<PreferenceRepositoryService>().saveIsAwaitUser(true);
      getIt<PreferenceRepositoryService>().saveAwaitUser(steps);
      yield HomeState.error('$e');
    }
  }
}

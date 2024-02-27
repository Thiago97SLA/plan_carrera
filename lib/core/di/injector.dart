import 'package:get_it/get_it.dart';
import 'package:plancarrera/core/api/api.dart';
import 'package:plancarrera/core/shared_preferences/bloc/shared_preferences_bloc.dart';
import 'package:plancarrera/core/shared_preferences/preferences_repository_service.dart';
import 'package:plancarrera/feature/home/bloc/home_bloc.dart';
import 'package:plancarrera/feature/home/service/home_impl_service.dart';
import 'package:plancarrera/feature/home/service/home_service.dart';

final getIt = GetIt.instance;

Future<void> setUpAppScope() {
  //Register singleton instace
  getIt.registerLazySingleton<ImplHomeService>(() => HomeService(APIService()));
  getIt.registerLazySingleton<HomeBloc>(() => HomeBloc(getIt<ImplHomeService>()));
  getIt.registerLazySingleton(() => PreferenceRepositoryService());
  getIt.registerLazySingleton<SharedPreferencesBloc>(() => SharedPreferencesBloc(
        preferenceRepository: getIt<PreferenceRepositoryService>(),
      ));

  return getIt.allReady();
}

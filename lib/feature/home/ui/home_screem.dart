import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plancarrera/core/di/injector.dart';
import 'package:plancarrera/core/shared_preferences/preferences_repository_service.dart';
import 'package:plancarrera/feature/error/ui/error_screen.dart';
import 'package:plancarrera/feature/home/bloc/home_bloc.dart';
import 'package:plancarrera/feature/home/ui/componets/body_home.dart';
import 'package:plancarrera/ui/componets/custom_scaffold.dart';
import 'package:plancarrera/ui/componets/loading_screen.dart';
import 'package:plancarrera/ui/utils/palette.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const route = "/HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    getIt<HomeBloc>().add(const HomeEvent.getUser());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScafold(
      padding: const EdgeInsets.all(20),
      appBar: AppBar(
          backgroundColor: Palette.backgraound,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    color: Palette.nuetral,
                    borderRadius: BorderRadius.all(
                      Radius.circular(35),
                    ),
                  ),
                  padding: const EdgeInsets.all(20)),
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  color: Palette.nuetral,
                  borderRadius: BorderRadius.all(
                    Radius.circular(35),
                  ),
                ),
                child: const Icon(
                  Icons.person_outline_sharp,
                  color: Palette.backgraound,
                ),
              ),
            ],
          )),
      body: BlocConsumer<HomeBloc, HomeState>(
        builder: (BuildContext context, HomeState state) => state.maybeWhen(
          orElse: () {
            return const Center();
          },
          getUset: (infoUser) => BodyHome(
            userInfo: infoUser,
          ),
          error: (messange) => getIt<PreferenceRepositoryService>().isSaveUser()
              ? BodyHome(userInfo: getIt<PreferenceRepositoryService>().getUser()!)
              : const ErrorScreen(),
        ),
        listener: (BuildContext context, HomeState state) => state.maybeWhen(
          orElse: () {
            return Loading.hide(context);
          },
          initial: () {
            return Loading.show(context);
          },
          error: (_) {
            return Loading.hide(context);
          },
          getUset: (_) {
            return Loading.hide(context);
          },
        ),
      ),
    );
  }
}

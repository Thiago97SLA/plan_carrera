import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:plancarrera/feature/detail/details_screen.dart';
import 'package:plancarrera/feature/error/ui/error_screen.dart';
import 'package:plancarrera/feature/home/ui/home_screem.dart';

class CustomRouter {
  CustomRouter();

  Route onGenerateRoute(RouteSettings settings) {
    log("#######################");
    log("Router go to ");
    log("Go to router:${settings.name}");
    log("Argumentos:${settings.arguments}");
    log("#######################");
    return routesApp(settings);
  }

  Route routesApp(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.route:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
          settings: settings,
        );
      // case DetailScreen.route:
      //   return MaterialPageRoute(
      //     builder: (context) => const DetailScreen(userInfo: null,),
      //     settings: settings,
      //   );
      default:
        return MaterialPageRoute(
          builder: (context) => const ErrorScreen(),
          settings: settings,
        );
    }
  }
}

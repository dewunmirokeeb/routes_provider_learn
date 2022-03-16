// ignore_for_file: unused_local_variable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:routes_provider_learn/pages/login.dart';
import 'package:routes_provider_learn/pages/main_page.dart';
import 'package:routes_provider_learn/pages/settings.dart';

class Routemanager {
  static const String login = '/';
  static const String mainpage = '/mainpage';
  static const String settingspage = 'settings';

  static Route<dynamic> generateroute(RouteSettings settings) {
    switch (settings.name) {
      case mainpage:
        return MaterialPageRoute(
          builder: (context) => const MainPage(),
        );
      case login:
        return MaterialPageRoute(
          builder: (context) => LoginPage(),
        );
      case settingspage:
        return MaterialPageRoute(
          builder: (context) => const Settings(),
        );
      default:
        throw const FormatException(
            'Route not found! check Route folder again');
    }
  }
}

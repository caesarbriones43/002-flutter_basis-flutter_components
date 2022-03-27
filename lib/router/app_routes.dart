import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';

import '../screens/screen.dart';

class AppRoutes {
  static const initialRoute = 'listview1';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        name: 'home',
        icon: Icons.home,
        screen: const HomeScreen()),
    MenuOption(
        route: 'listview1',
        name: 'listview1',
        icon: Icons.list,
        screen: const HomeScreen()),
    MenuOption(
        route: 'listview2',
        name: 'listview2',
        icon: Icons.line_style,
        screen: const ListView2Screen()),
    MenuOption(
        route: 'card',
        name: 'card',
        icon: Icons.credit_card,
        screen: const CardScreen()),
    MenuOption(
        route: 'alert',
        name: 'AleralerttScreen',
        icon: Icons.add_alarm,
        screen: const AlertScreen())
  ];

  static Route<dynamic> onGenerateRoute(settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.name: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const ListView1Screen(),
  //   'listview2': (BuildContext context) => const ListView2Screen(),
  //   'card': (BuildContext context) => const CardScreen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  // };
}

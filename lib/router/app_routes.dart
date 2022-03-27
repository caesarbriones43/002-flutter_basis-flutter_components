import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_components/models/models.dart';

import '../screens/screen.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        name: 'HomeScreen',
        icon: Icons.home,
        screen: const HomeScreen()),
    MenuOption(
        route: 'listview1',
        name: 'ListView1Screen',
        icon: Icons.list,
        screen: const HomeScreen()),
    MenuOption(
        route: 'listview2',
        name: 'ListView2Screen',
        icon: Icons.list,
        screen: const ListView2Screen()),
    MenuOption(
        route: 'card',
        name: 'CardScreen',
        icon: Icons.list,
        screen: const CardScreen()),
    MenuOption(
        route: 'alert',
        name: 'AlertScreen',
        icon: Icons.list,
        screen: const AlertScreen())
  ];

  static Route<dynamic> onGenerateRoute(settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const ListView1Screen(),
    'listview2': (BuildContext context) => const ListView2Screen(),
    'card': (BuildContext context) => const CardScreen(),
    'alert': (BuildContext context) => const AlertScreen(),
  };
}

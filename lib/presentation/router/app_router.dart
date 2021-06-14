import 'package:code_exp_2021/presentation/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter {

  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) =>
          const HomeScreen(
            title: 'HomeScreen',
          ),
        );
      default:
        return null;
    }
  }
}
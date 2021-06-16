import 'package:code_exp_2021/presentation/router/app_router.dart';
import 'package:code_exp_2021/providers/carousell.dart';

import 'package:code_exp_2021/providers/park.dart';
import 'package:code_exp_2021/providers/parkItem.dart';
import 'package:code_exp_2021/providers/route_feed.dart';
import 'package:code_exp_2021/screens/explore_screen.dart';
import 'package:code_exp_2021/screens/home_screen.dart';
import 'package:code_exp_2021/screens/route_tabs.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

const MaterialColor kPrimaryColor = const MaterialColor(
  0xFF1D3557,
  const <int, Color>{
    50: const Color(0xFF0E7AC7),
    100: const Color(0xFF0E7AC7),
    200: const Color(0xFF0E7AC7),
    300: const Color(0xFF0E7AC7),
    400: const Color(0xFF0E7AC7),
    500: const Color(0xFF0E7AC7),
    600: const Color(0xFF0E7AC7),
    700: const Color(0xFF0E7AC7),
    800: const Color(0xFF0E7AC7),
    900: const Color(0xFF0E7AC7),
  },
);

class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key);
  final AppRouter _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Parks()),
        ChangeNotifierProvider.value(value: Carousells()),
        ChangeNotifierProvider.value(value: RouteFeed()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: kPrimaryColor,
          accentColor: Color.fromRGBO(168, 218, 220, 1),
          canvasColor: Color.fromRGBO(241, 250, 238, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
                bodyText1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
                bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
                headline6: TextStyle(
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold,
                ),
                headline1: TextStyle(
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
        ),
        onGenerateRoute: _appRouter.onGenerateRoute,
        home: RunningScreen(),
      ),
    );
  }
}

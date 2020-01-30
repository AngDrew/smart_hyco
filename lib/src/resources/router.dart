import 'package:flutter/material.dart';
import 'package:smarthyco/src/screens/login_scr.dart';
import 'package:smarthyco/src/screens/main_scr.dart';
import 'package:smarthyco/src/screens/register_scr.dart';
import 'package:smarthyco/src/screens/splash_scr.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute<dynamic>(builder: (_) => SplashScreen());
      case '/login':
        return MaterialPageRoute<dynamic>(builder: (_) => LoginScreen());
      case '/register':
        return MaterialPageRoute<dynamic>(builder: (_) => RegisterScreen());
      case '/main':
        return MaterialPageRoute<dynamic>(builder: (_) => MainScreen());
      default:
        return MaterialPageRoute<dynamic>(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}

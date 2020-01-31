import 'package:flutter/material.dart';
import 'package:smarthyco/src/screens/commodity_scr.dart';
import 'package:smarthyco/src/screens/garden_list_scr.dart';
import 'package:smarthyco/src/screens/login_scr.dart';
import 'package:smarthyco/src/screens/main_scr.dart';
import 'package:smarthyco/src/screens/offer_list_scr.dart';
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
      case '/offer':
        return MaterialPageRoute<dynamic>(
            builder: (_) => OfferListScreen(), settings: settings);
      case '/garden':
        return MaterialPageRoute<dynamic>(
            builder: (_) => GardenListScreen(), settings: settings);
      case '/commodity':
        return MaterialPageRoute<dynamic>(
            builder: (_) => CommodityScreen(), settings: settings);
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

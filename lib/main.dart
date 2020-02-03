import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tanam_kota/src/screens/splash_scr.dart';

import 'src/resources/router.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tanam Kota',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SplashScreen(),
      onGenerateRoute: Router.generateRoute,
      initialRoute: '/',
    );
  }
}

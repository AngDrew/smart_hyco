import 'package:flutter/material.dart';
import 'package:smarthyco/src/screens/login_scr.dart';

import 'register_scr.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future<void>.delayed(const Duration(seconds: 1), () {
      Navigator.push(
          context,
          MaterialPageRoute<dynamic>(
              builder: (BuildContext context) => RegisterScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(
          image: AssetImage('assets/logo/logo.png'),
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}

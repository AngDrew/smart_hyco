import 'package:flutter/material.dart';

class WSS {
  static RoundedRectangleBorder roundedBorder(double radius, BorderSide side) {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radius),
      side: (side != null) ? side : null,
    );
  }

  static const BorderSide borderGreen = BorderSide(
    color: Colors.green,
    width: 2,
  );

  static const BorderSide noBorder = BorderSide.none;

  //appbar stuffs
  static const Image appBarLogo = Image(
    image: AssetImage('assets/logo/logo.png'),
    height: 50,
  );
}

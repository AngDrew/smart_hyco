import 'package:flutter/material.dart';
import 'package:smarthyco/src/resources/color_palette.dart';

/// Text Style Sheet
///
/// this class contains constants of TextStyle
/// to generalize the styling of UI development
///
/// usage format: [size][Color][Bold]
///
/// available size: [xs] [sm] [md] [bg] [lg] [xl] [x2l] [x3l] [x4l]
///
/// available color: [White] [Black] [Prime]
///
/// note: the `PrimaryColor` is controlled from `color_palette.dart`
///
/// add [Bold] to use bolded version
///
/// example:
///
/// - mdPrime
///
/// - smBlackBold
///
/// - lg
///
/// code example:
///
/// ```
/// Text(
///   'some text',
///   style: TSS.lgBlackBold,
/// )
/// ```

class TSS {
  static const Color primeColor = CP.primaryColor;

  //default colored text
  static const TextStyle xs = TextStyle(
    fontSize: 8,
  );
  static const TextStyle sm = TextStyle(
    fontSize: 12,
  );
  static const TextStyle md = TextStyle(
    fontSize: 16,
  );
  static const TextStyle bg = TextStyle(
    fontSize: 20,
  );
  static const TextStyle lg = TextStyle(
    fontSize: 24,
  );
  static const TextStyle xl = TextStyle(
    fontSize: 28,
  );
  static const TextStyle x2l = TextStyle(
    fontSize: 32,
  );
  static const TextStyle x3l = TextStyle(
    fontSize: 36,
  );
  static const TextStyle x4l = TextStyle(
    fontSize: 40,
  );

  //prime colored text
  static const TextStyle xsPrime = TextStyle(
    fontSize: 8,
    color: primeColor,
  );
  static const TextStyle smPrime = TextStyle(
    fontSize: 12,
    color: primeColor,
  );
  static const TextStyle mdPrime = TextStyle(
    fontSize: 16,
    color: primeColor,
  );
  static const TextStyle bgPrime = TextStyle(
    fontSize: 20,
    color: primeColor,
  );
  static const TextStyle lgPrime = TextStyle(
    fontSize: 24,
    color: primeColor,
  );
  static const TextStyle xlPrime = TextStyle(
    fontSize: 28,
    color: primeColor,
  );
  static const TextStyle x2lPrime = TextStyle(
    fontSize: 32,
    color: primeColor,
  );
  static const TextStyle x3lPrime = TextStyle(
    fontSize: 36,
    color: primeColor,
  );
  static const TextStyle x4lPrime = TextStyle(
    fontSize: 40,
    color: primeColor,
  );

  //white colored text
  static const TextStyle xsWhite = TextStyle(
    fontSize: 8,
    color: Colors.white,
  );
  static const TextStyle smWhite = TextStyle(
    fontSize: 12,
    color: Colors.white,
  );
  static const TextStyle mdWhite = TextStyle(
    fontSize: 16,
    color: Colors.white,
  );
  static const TextStyle bgWhite = TextStyle(
    fontSize: 20,
    color: Colors.white,
  );
  static const TextStyle lgWhite = TextStyle(
    fontSize: 24,
    color: Colors.white,
  );
  static const TextStyle xlWhite = TextStyle(
    fontSize: 28,
    color: Colors.white,
  );
  static const TextStyle x2lWhite = TextStyle(
    fontSize: 32,
    color: Colors.white,
  );
  static const TextStyle x3lWhite = TextStyle(
    fontSize: 36,
    color: Colors.white,
  );
  static const TextStyle x4lWhite = TextStyle(
    fontSize: 40,
    color: Colors.white,
  );

  //black colored text
  static const TextStyle xsBlack = TextStyle(
    fontSize: 8,
    color: Colors.black,
  );
  static const TextStyle smBlack = TextStyle(
    fontSize: 12,
    color: Colors.black,
  );
  static const TextStyle mdBlack = TextStyle(
    fontSize: 16,
    color: Colors.black,
  );
  static const TextStyle bgBlack = TextStyle(
    fontSize: 20,
    color: Colors.black,
  );
  static const TextStyle lgBlack = TextStyle(
    fontSize: 24,
    color: Colors.black,
  );
  static const TextStyle xlBlack = TextStyle(
    fontSize: 28,
    color: Colors.black,
  );
  static const TextStyle x2lBlack = TextStyle(
    fontSize: 32,
    color: Colors.black,
  );
  static const TextStyle x3lBlack = TextStyle(
    fontSize: 36,
    color: Colors.black,
  );
  static const TextStyle x4lBlack = TextStyle(
    fontSize: 40,
    color: Colors.black,
  );

  //prime colored bold text
  static const TextStyle xsPrimeBold = TextStyle(
    fontSize: 8,
    color: primeColor,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle smPrimeBold = TextStyle(
    fontSize: 12,
    color: primeColor,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle mdPrimeBold = TextStyle(
    fontSize: 16,
    color: primeColor,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle bgPrimeBold = TextStyle(
    fontSize: 20,
    color: primeColor,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle lgPrimeBold = TextStyle(
    fontSize: 24,
    color: primeColor,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle xlPrimeBold = TextStyle(
    fontSize: 28,
    color: primeColor,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle x2lPrimeBold = TextStyle(
    fontSize: 32,
    color: primeColor,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle x3lPrimeBold = TextStyle(
    fontSize: 36,
    color: primeColor,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle x4lPrimeBold = TextStyle(
    fontSize: 40,
    color: primeColor,
    fontWeight: FontWeight.w600,
  );

  //white colored bold text
  static const TextStyle xsWhiteBold = TextStyle(
    fontSize: 8,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle smWhiteBold = TextStyle(
    fontSize: 12,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle mdWhiteBold = TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle bgWhiteBold = TextStyle(
    fontSize: 20,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle lgWhiteBold = TextStyle(
    fontSize: 24,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle xlWhiteBold = TextStyle(
    fontSize: 28,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle x2lWhiteBold = TextStyle(
    fontSize: 32,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle x3lWhiteBold = TextStyle(
    fontSize: 36,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle x4lWhiteBold = TextStyle(
    fontSize: 40,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );

  //black colored bold text
  static const TextStyle xsBlackBold = TextStyle(
    fontSize: 8,
    color: Colors.black,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle smBlackBold = TextStyle(
    fontSize: 12,
    color: Colors.black,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle mdBlackBold = TextStyle(
    fontSize: 16,
    color: Colors.black,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle bgBlackBold = TextStyle(
    fontSize: 20,
    color: Colors.black,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle lgBlackBold = TextStyle(
    fontSize: 24,
    color: Colors.black,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle xlBlackBold = TextStyle(
    fontSize: 28,
    color: Colors.black,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle x2lBlackBold = TextStyle(
    fontSize: 32,
    color: Colors.black,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle x3lBlackBold = TextStyle(
    fontSize: 36,
    color: Colors.black,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle x4lBlackBold = TextStyle(
    fontSize: 40,
    color: Colors.black,
    fontWeight: FontWeight.w600,
  );
}

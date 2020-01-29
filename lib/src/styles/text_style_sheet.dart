import 'package:flutter/material.dart';

/// Text Style Sheet
///
/// this class contains constants of TextStyle
/// to generalize the styling of UI development
///
/// usage format: [size][Color][Bold]
///
/// available size: [sm] [md] [bg] [lg]
///
/// available color: [White] [Black] [Prime]
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
  static const Color primeColor = Colors.green;

  //default colored text
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

  //prime colored text
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

  //white colored text
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

  //black colored text
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

  //prime colored bold text
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

  //white colored bold text
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

  //black colored bold text
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
}

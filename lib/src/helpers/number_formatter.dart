import 'package:flutter/material.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';

class NumberFormatter {
  static void formatWithController(String str, TextEditingController tec) {
    final String newStr = str.replaceAll(RegExp('[^0-9]'), '');
    if (newStr.isEmpty) {
      tec.text = '';
    }
    tec.text = FlutterMoneyFormatter(
      amount: double.parse(newStr),
      settings: MoneyFormatterSettings(
        fractionDigits: 0,
        decimalSeparator: ',',
        thousandSeparator: '.',
        // symbol: 'Rp.',
        // symbolAndNumberSeparator: ' ',
      ),
    ).output.nonSymbol;
    tec.selection = TextSelection.collapsed(offset: tec.text.length);
  }

  static String format(String str) {
    final String newStr = str.replaceAll(RegExp('[^0-9]'), '');
    if (newStr.isEmpty) {
      str = '';
    }
    return FlutterMoneyFormatter(
      amount: double.parse(newStr),
      settings: MoneyFormatterSettings(
        fractionDigits: 0,
        decimalSeparator: ',',
        thousandSeparator: '.',
        symbol: '',
        symbolAndNumberSeparator: ' ',
      ),
    ).output.symbolOnLeft;
  }
}

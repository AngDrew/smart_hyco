import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:smarthyco/src/screens/sub_screens/destination.dart';

class DestinationViewModel extends ChangeNotifier {
  int _index = 0;
  List<Destination> destinations = <Destination>[
    Destination(title: 'Home', icon: Icons.home, color: Colors.green),
    Destination(title: 'Commodity', icon: Icons.layers, color: Colors.green),
    Destination(title: 'Miteq', icon: Icons.work, color: Colors.green),
    Destination(title: 'Supply', icon: Icons.input, color: Colors.green),
    Destination(
        title: 'Account', icon: Icons.account_circle, color: Colors.green),
  ];

  int get index => _index;

  void moveToScreen(int to) {
    _index = to;
    notifyListeners();
  }
}

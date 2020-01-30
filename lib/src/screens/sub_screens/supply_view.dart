import 'package:flutter/material.dart';

import 'destination.dart';

class SupplyView extends StatefulWidget {
  const SupplyView({Key key, this.destination}) : super(key: key);

  final Destination destination;

  @override
  _SupplyViewState createState() => _SupplyViewState();
}

class _SupplyViewState extends State<SupplyView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('supply'),
    );
  }
}

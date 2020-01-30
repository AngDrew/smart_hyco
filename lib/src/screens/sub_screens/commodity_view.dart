import 'package:flutter/material.dart';

import 'destination.dart';

class CommodityView extends StatefulWidget {
  const CommodityView({Key key, this.destination}) : super(key: key);

  final Destination destination;

  @override
  _CommodityViewState createState() => _CommodityViewState();
}

class _CommodityViewState extends State<CommodityView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('komoditas'),
    );
  }
}

import 'package:flutter/material.dart';

import 'destination.dart';

class MonitoringView extends StatefulWidget {
  const MonitoringView({Key key, this.destination}) : super(key: key);

  final Destination destination;

  @override
  _MonitoringViewState createState() => _MonitoringViewState();
}

class _MonitoringViewState extends State<MonitoringView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('miteq'),
    );
  }
}

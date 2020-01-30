import 'package:flutter/material.dart';

import 'destination.dart';

class MiteqView extends StatefulWidget {
  const MiteqView({Key key, this.destination}) : super(key: key);

  final Destination destination;

  @override
  _MiteqViewState createState() => _MiteqViewState();
}

class _MiteqViewState extends State<MiteqView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('miteq'),
    );
  }
}

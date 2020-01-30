import 'package:flutter/material.dart';

import 'destination.dart';

class AccountView extends StatefulWidget {
  const AccountView({Key key, this.destination}) : super(key: key);

  final Destination destination;

  @override
  _AccountViewState createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('acc'),
    );
  }
}

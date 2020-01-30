import 'package:flutter/material.dart';
import 'package:smarthyco/src/styles/text_style_sheet.dart';

import 'destination.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key key, this.destination}) : super(key: key);

  final Destination destination;

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'aaaaa',
            style: TSS.xsBlack,
          ),
          Text(
            'aaaaa',
            style: TSS.smBlack,
          ),
          Text(
            'aaaaa',
            style: TSS.mdBlack,
          ),
          Text(
            'aaaaa',
            style: TSS.bgBlack,
          ),
          Text(
            'aaaaa',
            style: TSS.lgBlack,
          ),
          Text(
            'aaaaa',
            style: TSS.xlBlack,
          ),
          Text(
            'aaaaa',
            style: TSS.x2lBlack,
          ),
          Text(
            'aaaaa',
            style: TSS.x3lBlack,
          ),
          Text(
            'aaaaa',
            style: TSS.x4lBlack,
          ),
        ],
      ),
    );
  }
}

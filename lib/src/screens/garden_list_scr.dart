import 'package:flutter/material.dart';
import 'package:smarthyco/src/models/garden_model.dart';
import 'package:smarthyco/src/resources/spacing.dart';
import 'package:smarthyco/src/widgets/custom_app_bar.dart';
import 'package:smarthyco/src/widgets/widger_catalog.dart';

import 'arguments/arguments.dart';

class GardenListScreen extends StatefulWidget {
  @override
  _GardenListScreenState createState() => _GardenListScreenState();
}

class _GardenListScreenState extends State<GardenListScreen> {
  @override
  Widget build(BuildContext context) {
    final List<GardenModel> gardens =
        (ModalRoute.of(context).settings.arguments as Arguments).args
            as List<GardenModel>;
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Kolam Saya',
        backgroundColor: Colors.transparent,
        isCenter: true,
      ),
      body: Container(
        padding: Spacing.horizontalSymetric10,
        child: ListView(
          children: List<Widget>.generate(gardens.length, (int i) {
            return WidgetCatalog.gardenItem(gardens[i]);
          }),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tanam_kota/src/models/offer_model.dart';
import 'package:tanam_kota/src/resources/spacing.dart';
import 'package:tanam_kota/src/screens/arguments/arguments.dart';
import 'package:tanam_kota/src/widgets/custom_app_bar.dart';
import 'package:tanam_kota/src/widgets/widger_catalog.dart';

class OfferListScreen extends StatefulWidget {
  @override
  _OfferListScreenState createState() => _OfferListScreenState();
}

class _OfferListScreenState extends State<OfferListScreen> {
  @override
  Widget build(BuildContext context) {
    final List<OfferModel> offers =
        (ModalRoute.of(context).settings.arguments as Arguments).args
            as List<OfferModel>;
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Penawaran untuk Anda',
        backgroundColor: Colors.transparent,
        isCenter: true,
      ),
      body: Container(
        padding: Spacing.horizontalSymetric10,
        child: ListView(
          children: List<Widget>.generate(offers.length, (int i) {
            return WidgetCatalog.offerItem(offers[i]);
          }),
        ),
      ),
    );
  }
}

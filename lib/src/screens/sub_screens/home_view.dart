import 'package:flutter/material.dart';
import 'package:smarthyco/src/models/garden_model.dart';
import 'package:smarthyco/src/models/offer_model.dart';
import 'package:smarthyco/src/resources/spacing.dart';
import 'package:smarthyco/src/screens/arguments/arguments.dart';
import 'package:smarthyco/src/styles/text_style_sheet.dart';
import 'package:smarthyco/src/widgets/widger_catalog.dart';

import 'destination.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key key, this.destination}) : super(key: key);

  final Destination destination;

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<OfferModel> offers = <OfferModel>[];
  List<GardenModel> gardens = <GardenModel>[];
  int loadAmount = 3;

  @override
  void initState() {
    super.initState();

    //offer
    offers.add(OfferModel('Dark Blue Yabby Lobster', 1000, 'Des 09, 2019'));
    offers.add(OfferModel('White Lobster', 300, 'Jan 11, 2020'));
    offers.add(OfferModel('Zebra Lobster', 500, 'May 19, 2020'));

    //garden
    gardens
        .add(GardenModel('Selada Hijau', 'Des 01, 2019', 'Des 31, 2019', 70));
    gardens.add(GardenModel('Kale', 'Des 02, 2019', 'Jan 01, 2020', 25));
    gardens.add(GardenModel('Pakcoy', 'Des 03, 2019', 'Jan 02, 2020', 40));
    gardens
        .add(GardenModel('Selada Hijau', 'Des 01, 2019', 'Des 31, 2019', 90));
    gardens.add(GardenModel('Kale', 'Des 02, 2019', 'Jan 01, 2020', 50));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Spacing.horizontalSymetric10,
      child: ListView(
        children: <Widget>[
          offerTitle(),
          Spacing.vertical10,
          //fetch & loop here
          Column(
            children: List<Widget>.generate(loadAmount, (int i) {
              return WidgetCatalog.offerItem(offers[i]);
            }),
          ),
          //space between menu
          Spacing.vertical20,
          //-----------------
          gardenTitle(),
          Spacing.vertical10,
          //fetch & loop here
          Column(
            children: List<Widget>.generate(loadAmount, (int i) {
              return WidgetCatalog.gardenItem(gardens[i]);
            }),
          ),
        ],
      ),
    );
  }

  Row gardenTitle() {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 9,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Text(
                'Kebun Saya',
                style: TSS.lgBlackBold,
              ),
              Text(
                'Laporan berkala kebun saya',
                style: TSS.smBlack,
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {
              Navigator.pushNamed(context, '/garden',
                  arguments: Arguments(gardens));
            },
          ),
        ),
      ],
    );
  }

  Row offerTitle() {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 9,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Text(
                'Penawaran kepada Anda',
                style: TSS.lgBlackBold,
              ),
              Text(
                'KLIK SUPPLY untuk konfirmasi kesediaan men-supply',
                style: TSS.smBlack,
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {
              Navigator.pushNamed(context, '/offer',
                  arguments: Arguments(offers));
            },
          ),
        ),
      ],
    );
  }
}

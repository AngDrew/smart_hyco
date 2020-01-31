import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:smarthyco/src/models/garden_model.dart';
import 'package:smarthyco/src/models/offer_model.dart';
import 'package:smarthyco/src/resources/color_palette.dart';
import 'package:smarthyco/src/resources/spacing.dart';
import 'package:smarthyco/src/styles/text_style_sheet.dart';
import 'package:smarthyco/src/styles/widget_style_sheet.dart';

class WidgetCatalog {
  static Widget gardenItem(GardenModel garden) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Spacing.vertical5,
              Text(
                '${garden.name}',
                style: TSS.bgBlack,
              ),
              Text(
                '${garden.from} - ${garden.to}',
                style: TSS.smBlack,
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: 200,
                ),
                child: LinearPercentIndicator(
                  percent: garden.progress / 100,
                  progressColor: CP.primaryColor,
                  lineHeight: 7.5,
                  padding: Spacing.horizontalSymetric5,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: MaterialButton(
            onPressed: () {},
            child: Text(
              'Detail',
              style: TSS.mdPrime,
            ),
            shape: WSS.roundedBorder(
              20,
              WSS.borderGreen,
            ),
          ),
        ),
      ],
    );
  }

  static Widget offerItem(OfferModel offer) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Spacing.vertical5,
              Text(
                '${offer.name}',
                style: TSS.bgBlack,
              ),
              Text(
                ((offer.weight / 1000) >= 1)
                    ? '${offer.weight / 1000} Kilo Gram'
                    : '${offer.weight} Gram',
                style: TSS.mdPrime,
              ),
              Text(
                '${offer.date}',
                style: TSS.smBlack,
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: MaterialButton(
            onPressed: () {},
            child: Text(
              'Supply',
              style: TSS.mdPrime,
            ),
            shape: WSS.roundedBorder(
              20,
              WSS.borderGreen,
            ),
          ),
        ),
      ],
    );
  }
}

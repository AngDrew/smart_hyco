import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:tanam_kota/src/models/garden_model.dart';
import 'package:tanam_kota/src/models/offer_model.dart';
import 'package:tanam_kota/src/resources/color_palette.dart';
import 'package:tanam_kota/src/resources/spacing.dart';
import 'package:tanam_kota/src/styles/text_style_sheet.dart';
import 'package:tanam_kota/src/styles/widget_style_sheet.dart';

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
        _button('Detail'),
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
        _button('Supply'),
      ],
    );
  }

  static Expanded _button(String value) {
    return Expanded(
      flex: 3,
      child: MaterialButton(
        onPressed: () {
          switch (value) {
            case 'Supply':
              //do detail
              break;
            case 'Detail':
              //do value
              break;
            default:
              print('invalid value');
          }
        },
        child: Text(
          value,
          style: TSS.mdPrime,
        ),
        shape: WSS.roundedBorder(
            20,
            BorderSide(
              color: CP.primaryColor,
              width: 2,
            )),
      ),
    );
  }
}

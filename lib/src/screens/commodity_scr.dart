import 'package:flutter/material.dart';
import 'package:tanam_kota/src/helpers/fetch_image.dart';
import 'package:tanam_kota/src/helpers/number_formatter.dart';
import 'package:tanam_kota/src/models/commodity_model.dart';
import 'package:tanam_kota/src/resources/spacing.dart';
import 'package:tanam_kota/src/styles/text_style_sheet.dart';
import 'package:tanam_kota/src/styles/widget_style_sheet.dart';
import 'package:tanam_kota/src/widgets/custom_app_bar.dart';

import 'arguments/arguments.dart';

class CommodityScreen extends StatefulWidget {
  @override
  _CommodityScreenState createState() => _CommodityScreenState();
}

class _CommodityScreenState extends State<CommodityScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final CommodityModel commodity =
        (ModalRoute.of(context).settings.arguments as Arguments).args
            as CommodityModel;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 0,
                  left: 0,
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: size.width,
                        height: size.height * 0.4,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                          child: FetchImage('${commodity.img}'),
                        ),
                      ),
                      Spacing.vertical30,
                      Card(
                        shape: WSS.roundedBorder(20, WSS.noBorderSide),
                        child: Container(
                          width: size.width * 0.75,
                          padding: Spacing.horizontalSymetric5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                '${commodity.name}',
                                style: TSS.bgBlackBold,
                              ),
                              Container(
                                width: size.width,
                                child: Text('${commodity.desc}'),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Icon(Icons.av_timer),
                                  Expanded(
                                    child: Text(
                                      '${commodity.duration} Hari',
                                      style: TSS.mdGrey,
                                    ),
                                  ),
                                  Text(
                                    'Rp',
                                    style: TSS.bgBlack,
                                  ),
                                  Text(
                                    NumberFormatter.format(
                                        '${commodity.price}'),
                                    style: TSS.bgGrey,
                                  ),
                                  Text(
                                    ' /ekor',
                                    style: TSS.smGrey,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CustomAppBar(
                  backgroundColor: Colors.transparent,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

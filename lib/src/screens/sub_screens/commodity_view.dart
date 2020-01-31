import 'package:flutter/material.dart';
import 'package:smarthyco/src/helpers/fetch_image.dart';
import 'package:smarthyco/src/helpers/number_formatter.dart';
import 'package:smarthyco/src/models/commodity_model.dart';
import 'package:smarthyco/src/resources/spacing.dart';
import 'package:smarthyco/src/screens/arguments/arguments.dart';
import 'package:smarthyco/src/styles/text_style_sheet.dart';

import 'destination.dart';

class CommodityView extends StatefulWidget {
  const CommodityView({Key key, this.destination}) : super(key: key);

  final Destination destination;

  @override
  _CommodityViewState createState() => _CommodityViewState();
}

class _CommodityViewState extends State<CommodityView> {
  List<CommodityModel> commoditys = <CommodityModel>[];

  @override
  void initState() {
    super.initState();

    commoditys.add(CommodityModel(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSjDhUE3_xM72zYmpFwpP6g5Cb9w5htWlZ_lZ0zNOKSUSyVJdPY',
      'Selada Hijau',
      'short desc',
      45,
      20000,
    ));
    commoditys.add(CommodityModel(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT0ILEl9Yr-N27MYbG4GPT-yFe2WQ6T8JBGNQkkeiMw1hN2q93B',
      'Kale',
      'short desc',
      60,
      25000,
    ));
    commoditys.add(CommodityModel(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSbpLfT5ozFIwoQ0FHi46I0bmQKywRCgV0UJk1qnZVTzZwgA0i0',
      'Pakcoy',
      'short desc',
      75,
      30000,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List<Widget>.generate(commoditys.length, (int i) {
        return commodityItem(commoditys[i]);
      }),
    );
  }

  Container commodityItem(CommodityModel commodity) {
    return Container(
      padding: Spacing.horizontalSymetric50,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        margin: const EdgeInsets.only(top: 15, bottom: 15),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/commodity',
                arguments: Arguments(commodity));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: FetchImage('${commodity.img}'),
                ),
              ),
              Spacing.vertical20,
              Container(
                padding: Spacing.horizontalSymetric10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '${commodity.name}',
                      style: TSS.bgBlackBold,
                    ),
                    Spacing.vertical5,
                    Row(
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
                          NumberFormatter.format('${commodity.price}'),
                          style: TSS.bgGrey,
                        ),
                        Text(
                          ' /ekor',
                          style: TSS.smGrey,
                        ),
                      ],
                    ),
                    Spacing.vertical5,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:smarthyco/src/styles/text_style_sheet.dart';
import 'package:smarthyco/src/styles/widget_style_sheet.dart';

class CustomAppBar {
  const CustomAppBar(this.title, this.child);
  final String title;
  final Widget child;

  Widget appBar(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return PreferredSize(
      preferredSize: Size(size.width, 58),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Hero(
                tag: 'topBarBtn',
                child: Card(
                  elevation: 10,
                  shape: WSS.roundedBorder(20, WSS.noBorder),
                  child: MaterialButton(
                    height: 50,
                    minWidth: 50,
                    elevation: 10,
                    shape: WSS.roundedBorder(20, WSS.noBorder),
                    onPressed: () {},
                    child: child,
                  ),
                ),
              ),
              // SizedBox(
              //   width: 50,
              // ),
              Hero(
                tag: 'title',
                transitionOnUserGestures: true,
                child: Card(
                  elevation: 10,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                    ),
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      height: 50,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            title,
                            style: TSS.lgBlackBold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

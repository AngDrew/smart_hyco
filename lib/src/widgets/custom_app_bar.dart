import 'package:flutter/material.dart';
import 'package:tanam_kota/src/resources/color_palette.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  CustomAppBar({
    this.title = '',
    this.widgetTitle,
    this.backgroundColor = CP.primaryColor,
    this.itemColor = Colors.black,
    this.actions,
    this.isCenter = false,
    this.elevation = 0.0,
  });

  final String title;
  final Widget widgetTitle;
  final Color backgroundColor;
  final Color itemColor;
  final List<Widget> actions;
  final bool isCenter;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      leading: Navigator.canPop(context)
          ? IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back,
                color: itemColor,
              ),
            )
          : null,
      centerTitle: isCenter,
      title: (widgetTitle != null)
          ? widgetTitle
          : Text(
              title,
              style: TextStyle(
                fontSize: 20,
                color: itemColor,
              ),
            ),
      actions: actions,
      elevation: elevation,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}

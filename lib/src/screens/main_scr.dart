import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tanam_kota/src/providers/destination_view_model.dart';
import 'package:tanam_kota/src/screens/sub_screens/commodity_view.dart';
import 'package:tanam_kota/src/screens/sub_screens/home_view.dart';
import 'package:tanam_kota/src/styles/text_style_sheet.dart';
import 'package:tanam_kota/src/styles/widget_style_sheet.dart';
import 'package:tanam_kota/src/widgets/custom_app_bar.dart';

import 'sub_screens/account_view.dart';
import 'sub_screens/destination.dart';
import 'sub_screens/monitoring_view.dart';
import 'sub_screens/supply_view.dart';

class MainScreen extends StatefulWidget {
  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DestinationViewModel>(
      create: (BuildContext context) => DestinationViewModel(),
      child: Scaffold(
        appBar: CustomAppBar(
          backgroundColor: Colors.transparent,
          isCenter: true,
          widgetTitle: WSS.appBarLogo,
        ),
        body: viewConsumer(),
        bottomNavigationBar: bottomNavBarConsumer(),
      ),
    );
  }

  Consumer<DestinationViewModel> bottomNavBarConsumer() {
    return Consumer<DestinationViewModel>(
      builder:
          (BuildContext context, DestinationViewModel destinationViewModel, _) {
        return BottomNavigationBar(
          currentIndex: destinationViewModel.index,
          items:
              destinationViewModel.destinations.map((Destination destination) {
            return BottomNavigationBarItem(
              icon: Icon(
                destination.icon,
                color: Colors.grey,
              ),
              activeIcon: Icon(
                destination.icon,
                color: destination.color,
              ),
              title: Text(
                destination.title,
                style: TSS.smPrime,
              ),
            );
          }).toList(),
          onTap: (int i) => destinationViewModel.moveToScreen(i),
        );
      },
    );
  }

  Consumer<DestinationViewModel> viewConsumer() {
    return Consumer<DestinationViewModel>(
      builder:
          (BuildContext context, DestinationViewModel destinationViewModel, _) {
        return IndexedStack(
          index: destinationViewModel.index,
          children: destinationViewModel.destinations
              .map<Widget>((Destination destination) {
            switch (destinationViewModel.index) {
              case 0:
                return HomeView(
                  destination: destination,
                );
              case 1:
                return CommodityView(
                  destination: destination,
                );
              case 2:
                return MonitoringView(
                  destination: destination,
                );
              case 3:
                return SupplyView(
                  destination: destination,
                );
              case 4:
                return AccountView(
                  destination: destination,
                );
              default:
                return const Text('Screen index not found!');
            }
          }).toList(),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';

import '../../resources/size_config.dart';

import '../../widgets/details_spot_widgets/header_details_spot_item.dart';
import '../../widgets/details_spot_widgets/slots_details_spot_item.dart';
import '../../widgets/details_spot_widgets/tides_details_spot_item.dart';

import '../../storage/dummy_data.dart';

class DetailsSpotScreen extends StatelessWidget {
  static String routeName = "/details-spot";

  @override
  Widget build(BuildContext context) {
    final spotId = ModalRoute.of(context).settings.arguments as String;
    final spot = DUMMY_SPOT.firstWhere((s) => s.id == spotId);
    final prevision =
        DUMMY_PREVISION.firstWhere((element) => element.id == "P1");
    return Scaffold(
      appBar: AppBar(
        title: Text(
          spot.name,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              HeaderDetailsSpotItem(prevision, spot),
              SizedBox(
                height: 1 * SizeConfig.heightMultiplier,
              ),
              TidesDetailsSpotItem(prevision, spot),
              SizedBox(height: 5.5 * SizeConfig.heightMultiplier),
              SlotsDetailsSpotItem(prevision, spot),
            ],
          ),
        ),
      ),
    );
  }
}

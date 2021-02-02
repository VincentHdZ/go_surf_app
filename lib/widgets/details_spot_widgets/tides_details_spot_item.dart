import 'package:flutter/material.dart';

import '../../models/prevision.dart';
import '../../models/spot.dart';

import '../../resources/size_config.dart';

class TidesDetailsSpotItem extends StatelessWidget {
  final Prevision prevision;
  final Spot spot;

  TidesDetailsSpotItem(this.prevision, this.spot);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          elevation: 3,
          margin: EdgeInsets.all(1 * SizeConfig.heightMultiplier),
          child: ListTile(
            leading: Icon(
              Icons.call_made,
              color: Colors.black,
              size: 7 * SizeConfig.imageSizeMultiplier,
            ),
            title: const Text(
              'Low tide',
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "in morning : " + prevision.lowTideInMorning,
                  style: TextStyle(
                    fontSize: 1.5 * SizeConfig.textMultiplier,
                  ),
                ),
                Text(
                  "in afternoon : " + prevision.lowTideInAfternoon,
                  style: TextStyle(
                    fontSize: 1.5 * SizeConfig.textMultiplier,
                  ),
                ),
              ],
            ),
          ),
        ),
        Card(
          elevation: 3,
          margin: EdgeInsets.all(1 * SizeConfig.heightMultiplier),
          child: ListTile(
            leading: Icon(
              Icons.call_received,
              color: Colors.black,
              size: 7 * SizeConfig.imageSizeMultiplier,
            ),
            title: const Text(
              'High tide',
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "in morning : " + prevision.highTideInMorning,
                  style: TextStyle(
                    fontSize: 1.5 * SizeConfig.textMultiplier,
                  ),
                ),
                Text(
                  "in afternoon : " + prevision.highTideAfternoon,
                  style: TextStyle(
                    fontSize: 1.5 * SizeConfig.textMultiplier,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

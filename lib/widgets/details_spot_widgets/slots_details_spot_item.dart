import 'package:flutter/material.dart';

import '../../resources/size_config.dart';

import '../../models/prevision.dart';
import '../../models/spot.dart';

class SlotsDetailsSpotItem extends StatelessWidget {
  final Prevision prevision;
  final Spot spot;

  SlotsDetailsSpotItem(this.prevision, this.spot);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15 * SizeConfig.heightMultiplier,
      width: 100 * SizeConfig.widthMultiplier,
      margin: EdgeInsets.symmetric(horizontal: 1 * SizeConfig.heightMultiplier),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(1 * SizeConfig.heightMultiplier),
            elevation: 1,
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(2.5),
            ),
            child: Container(
              margin: EdgeInsets.symmetric(
                  horizontal: 1.5 * SizeConfig.widthMultiplier),
              padding: const EdgeInsets.only(top: 3),
              width: 90 * SizeConfig.widthMultiplier,
              child: Column(
                children: <Widget>[
                  Text(
                    prevision.conditions[index]['hour'],
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 7 * SizeConfig.widthMultiplier),
                  ),
                  SizedBox(height: 2.0 * SizeConfig.heightMultiplier,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.sort,
                            size: 7 * SizeConfig.imageSizeMultiplier,
                          ),
                          Text(
                            prevision.conditions[index]['houle'] + ' M',
                            style: TextStyle(fontSize: 3.0 * SizeConfig.textMultiplier),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.alarm,
                            size: 7 * SizeConfig.imageSizeMultiplier,
                          ),
                          Text(
                            prevision.periode.toString() + 's',
                            style: TextStyle(
                              fontSize: 3.0 * SizeConfig.textMultiplier,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.explore,
                            size: 7 * SizeConfig.imageSizeMultiplier,
                          ),
                          Text(
                            prevision.conditions[index]['dv'],
                            style: TextStyle(
                              fontSize: 3.0 * SizeConfig.textMultiplier,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: prevision.conditions.length,
      ),
    );
  }
}

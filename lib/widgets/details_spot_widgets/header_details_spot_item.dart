import 'package:flutter/material.dart';

import '../../models/prevision.dart';
import '../../models/spot.dart';

import '../../resources/size_config.dart';

class HeaderDetailsSpotItem extends StatelessWidget {
  final Prevision prevision;
  final Spot spot;

  HeaderDetailsSpotItem(this.prevision, this.spot);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(190),
          ),
          child: Image.network(
            spot.imageUrl,
            height: 30 * SizeConfig.heightMultiplier,
            width: double.infinity,
            fit: BoxFit.cover,
            color: Color.fromRGBO(0, 0, 0, 0.5),
            colorBlendMode: BlendMode.multiply,
          ),
        ),
        Positioned.fill(
          top: 9.5 * SizeConfig.heightMultiplier,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                children: <Widget>[
                  Icon(
                    Icons.date_range,
                    color: Colors.white,
                    size: 7 * SizeConfig.imageSizeMultiplier,
                  ),
                  Text(
                    prevision.date.year.toString() +
                        "-" +
                        prevision.date.month.toString() +
                        "-" +
                        prevision.date.day.toString(),
                    style: TextStyle(
                        fontSize: 2.5 * SizeConfig.textMultiplier,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.wb_sunny,
                    color: Colors.white,
                    size: 7 * SizeConfig.imageSizeMultiplier,
                  ),
                  Text(
                    prevision.temperature.toString() + "C°",
                    style: TextStyle(
                        fontSize: 2.5 * SizeConfig.textMultiplier,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

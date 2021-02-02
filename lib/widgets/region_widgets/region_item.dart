import 'package:flutter/material.dart';

import '../../screens/regions_screen/region_spots_screen.dart';

import '../../resources/size_config.dart';


class RegionItem extends StatelessWidget {
  final String id;
  final String name;

  RegionItem(this.id, this.name);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          RegionSpotsScreen.routeName,
          arguments: {'idRegion': id, 'nameRegion': name},
        );
      },
      child: Container(
        padding: EdgeInsets.all(2 * SizeConfig.heightMultiplier),
        decoration: const BoxDecoration(
          color: Color.fromRGBO(0, 150, 255, 0.6),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Center(
          child: Text(
            name,
            style: TextStyle(
              fontSize: 2.5 * SizeConfig.textMultiplier,
            ),
          ),
        ),
      ),
    );
  }
}

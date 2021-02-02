import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/spot.dart';

import '../../widgets/spot_widgets/spot_item.dart';

import '../../providers/spot_provider.dart';

class RegionSpotsScreen extends StatefulWidget {
  static String routeName = "/region-spots";

  @override
  _RegionSpotsScreenState createState() => _RegionSpotsScreenState();
}

class _RegionSpotsScreenState extends State<RegionSpotsScreen> {
  @override
  Widget build(BuildContext context) {
    final argsRoute =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final regionId = argsRoute['idRegion'];
    final regionName = argsRoute['nameRegion'];
    final List<Spot> spotsByRegion =
        Provider.of<SpotProvider>(context, listen: true)
            .getSpotsByIdRegion(regionId);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          regionName,
          style: TextStyle(color: Colors.black),
          textAlign: TextAlign.right,
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (BuildContext ctx, int index) {
            return SpotItem(spotsByRegion[index].id, spotsByRegion[index].name,
                spotsByRegion[index].imageUrl, spotsByRegion[index].isFavorite);
          },
          itemCount: spotsByRegion.length,
        ),
      ),
    );
  }
}

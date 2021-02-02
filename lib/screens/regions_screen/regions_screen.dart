import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/region_provider.dart';

import '../../widgets/region_widgets/region_item.dart';

class RegionScreen extends StatelessWidget {
  static String routeName = "regions/";

  @override
  Widget build(BuildContext context) {
    var childRatio = (MediaQuery.of(context).size.width /
            MediaQuery.of(context).size.height) *
        4;
    return Center(
      child: Consumer<RegionProdiver>(
        builder: (context, regionProvider, _) => GridView(
          shrinkWrap: true,
          padding: EdgeInsets.all(20),
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: childRatio,
          ),
          children: regionProvider.regions
              .map(
                (region) => RegionItem(
                  region.id,
                  region.name,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

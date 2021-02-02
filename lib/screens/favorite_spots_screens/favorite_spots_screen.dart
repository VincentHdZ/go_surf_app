import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/spot.dart';

import '../../providers/spot_provider.dart';

import '../../widgets/spot_widgets/spot_item.dart';

import '../../resources/strings.dart';

class FavoritesSpotScreen extends StatelessWidget {
  static String routeName = "/favorites-spot";

  @override
  Widget build(BuildContext context) {
    final List<Spot> favoriteSpots =
        Provider.of<SpotProvider>(context).getFavoriteSpots();

    return favoriteSpots.length < 0
        ? Center(
            child: Text(
              Strings.noFavorites,
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          )
        : Container(
            child: ListView.builder(
              itemBuilder: (BuildContext ctx, int index) {
                return SpotItem(
                    favoriteSpots[index].id,
                    favoriteSpots[index].name,
                    favoriteSpots[index].imageUrl,
                    favoriteSpots[index].isFavorite);
              },
              itemCount: favoriteSpots.length,
            ),
          );
  }
}

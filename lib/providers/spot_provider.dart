import 'package:flutter/material.dart';

import '../models/spot.dart';

import '../storage/dummy_data.dart';

class SpotProvider extends ChangeNotifier {
  final List<Spot> _spots = DUMMY_SPOT;

  List<Spot> get spots {
    return _spots;
  }

  List<Spot> getSpotsByIdRegion(String idRegion) {
    return _spots.where((element) => element.idRegion == idRegion).toList();
  }

  List<Spot> getFavoriteSpots() {
    return _spots.where((element) => element.isFavorite == true).toList();
  }

  void changeFavoriteState(String idSpotToUpdate, bool value) {
    _spots.firstWhere((element) => element.id == idSpotToUpdate).isFavorite = !value;
    notifyListeners();
  }
}
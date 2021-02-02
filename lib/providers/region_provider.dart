import 'package:flutter/material.dart';

import '../models/region.dart';

import '../storage/dummy_data.dart';

class RegionProdiver extends ChangeNotifier {
  final List<Region> _regions = DUMMY_REGIONS;
  
  List<Region> get regions {
    return _regions;
  }
}
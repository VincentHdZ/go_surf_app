import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'resources/appTheme.dart';
import 'resources/size_config.dart';

import 'screens/settings_screens/settings_screen.dart';
import 'screens/spot_screens/details_spot_screen.dart';
import 'screens/tabs_screen.dart';
import 'screens/regions_screen/region_spots_screen.dart';
import 'screens/favorite_spots_screens/favorite_spots_screen.dart';

import 'providers/region_provider.dart';
import 'providers/spot_provider.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => RegionProdiver(),
          ),
          ChangeNotifierProvider(
            create: (context) => SpotProvider(),
          )
        ],
        child: GoSurfApp(),
      ),
    );

class GoSurfApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        SizeConfig().init(constraints);
        return MaterialApp(
          theme: AppTheme.appTheme,
          routes: {
            "/": (ctx) => TabsScreen(),
            RegionSpotsScreen.routeName: (ctx) => RegionSpotsScreen(),
            DetailsSpotScreen.routeName: (ctx) => DetailsSpotScreen(),
            FavoritesSpotScreen.routeName: (ctx) => FavoritesSpotScreen(),
            SettingsScreen.routeName: (ctx) => SettingsScreen(),
          },
        );
      },
    );
  }
}

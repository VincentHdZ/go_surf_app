import 'package:flutter/material.dart';
import 'package:go_surf_app/resources/size_config.dart';

class AppTheme {
  static const Color appBarBackgroundColor = Colors.white;
  static const Color selectedTabItemBackgroundColor = Colors.blue;
  static const Color unselectedTabItemBackgroundColor = Colors.grey;
  static const Color appBarTitleColor = Colors.black87;

  static final ThemeData appTheme = ThemeData(
    appBarTheme: AppBarTheme(
      color: appBarBackgroundColor,
      brightness: Brightness.light,
      textTheme: TextTheme(
        headline6: TextStyle(
          fontSize: 2.5 * SizeConfig.textMultiplier,
          color: appBarTitleColor,
        ),
      ),
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
  );
}

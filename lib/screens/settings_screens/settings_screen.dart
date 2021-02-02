import 'package:flutter/material.dart';

import '../../widgets/drawer_item.dart';

import '../../resources/strings.dart';

class SettingsScreen extends StatefulWidget {
  static String routeName = "/filter";

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  var _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Strings.settings,
        ),
      ),
      drawer: DrawerItem(),
      body: Column(
        children: <Widget>[
          SwitchListTile(
            title: Text(
              Strings.darkMode,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            value: _isDarkMode,
            onChanged: (bool value) {
              setState(() {
                _isDarkMode = value;
              });
            },
            secondary: const Icon(Icons.lightbulb_outline),
          ),
        ],
      ),
    );
  }
}

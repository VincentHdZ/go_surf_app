import 'package:flutter/material.dart';

import '../resources/strings.dart';

import '../screens/settings_screens/settings_screen.dart';

class DrawerItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ClipRRect(
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Center(
                  child: const Text(
                    Strings.titleGoSurf,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                    ),
                  ),
                ),
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(150),
                topRight: Radius.circular(150),
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(250),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.explore,
                size: 30,
                color: Colors.blue,
              ),
              title: Text(Strings.spots,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                  )),
              onTap: () {
                Navigator.pushReplacementNamed(context, "/");
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                size: 30,
                color: Colors.blue,
              ),
              title: Text(Strings.settings,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                  )),
              onTap: () {
                Navigator.pushReplacementNamed(context, SettingsScreen.routeName);
              },
            ),
          ],
        ),
      );
  }
}
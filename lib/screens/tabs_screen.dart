import 'package:flutter/material.dart';

import '../resources/appTheme.dart';
import '../resources/strings.dart';

import '../widgets/drawer_item.dart';

import 'favorite_spots_screens/favorite_spots_screen.dart';
import 'regions_screen/regions_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _indexSelected = 0;
  final List<Map<String, Object>> _pages = [
    {
      'title': Strings.titleGoSurf,
      'page': RegionScreen(),
    },
    {
      'title': Strings.titleFavoriteSpots,
      'page': FavoritesSpotScreen(),
    },
  ];

  void _indexSelectedChange(int index) {
    setState(() {
      _indexSelected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _pages[_indexSelected]['title'],
        ),
      ),
      drawer: DrawerItem(),
      body: _pages[_indexSelected]['page'],
      bottomNavigationBar: BottomNavigationBar(
          onTap: _indexSelectedChange,
          currentIndex: _indexSelected,
          type: BottomNavigationBarType.shifting,
          selectedItemColor: AppTheme.selectedTabItemBackgroundColor,
          unselectedItemColor: AppTheme.unselectedTabItemBackgroundColor,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: Strings.spots,
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: Strings.favorites,
            ),
          ]),
    );
  }
}

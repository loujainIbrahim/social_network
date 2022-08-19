import 'package:android_loujain/pages/categories_screen.dart';
import 'package:android_loujain/pages/drawer_screen.dart';
import 'package:flutter/material.dart';

import 'favorite_screen.dart';

class NavigationScreen extends StatefulWidget {
  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final List<Map<String, Object>> _l = [
    { 'title': Text(' التصنيفات'),
      'screen':CategoryScreen()},
    {'title': Text(' المفضلة'),
      'screen': FavoriteScreen()}
  ];

  int _indexCurrent = 0;
  void _selectedItem(int index) {
    setState(() {
      _indexCurrent = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(titleSpacing: 50, title:_l[_indexCurrent]['title'] 
      ),
      drawer: DrawerScreen(),
      
      body: _l[_indexCurrent]['screen'],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).primaryColor,
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.white,
          onTap: _selectedItem,
          currentIndex: _indexCurrent,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard), label: 'تصنيفات'),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: 'المفضلة')
          ]),
    );
  }
}

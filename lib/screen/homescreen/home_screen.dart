import 'package:flutter/material.dart';
import 'package:reviewapp/screen/component/component.dart';
import 'package:reviewapp/screen/homescreen/body.dart';
import 'package:reviewapp/screen/homescreen/component/address.dart';

import '../../config/theme.dart';
import '../../model/restuarant_list.dart';
import 'component/home_item_list.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppTheme.customAppBar(),
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [

            CommonComponent.searchBar(),
            SizedBox(
              height: 4,
            ),
            address(),
            HomeRestaurantTypeList()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: CustomAppTheme.textTheme1.overline,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Blogs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}

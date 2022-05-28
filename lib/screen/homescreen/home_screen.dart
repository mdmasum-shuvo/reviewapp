import 'package:flutter/material.dart';
import 'package:reviewapp/screen/component/component.dart';
import 'package:reviewapp/screen/homescreen/body.dart';

import '../../config/theme.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppTheme.customAppBar(),
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [CommonComponent.searchBar(),
          HomeScreenBody()],

        ),
      ),
    );
  }
}
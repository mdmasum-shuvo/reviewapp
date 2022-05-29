import 'package:flutter/material.dart';
import 'package:reviewapp/config/image.dart';
import 'package:reviewapp/config/theme.dart';
import 'package:reviewapp/model/restuarant_list.dart';
import 'package:reviewapp/screen/homescreen/component/home_item_list.dart';

class HomeRestaurantTypeList extends StatelessWidget{
  var rest=Restaurant("My Restaurent", CustomAssetImage.f1, "New Restaurent");

  final list=MyListBuilder.buildList();

  @override
  Widget build(BuildContext context) {
    return
          Expanded(
            child: ListView.builder(
              itemCount:list.length,
              itemBuilder: (BuildContext context,int index){
                return HomeItemList( data:list[index]);
              },
            ),
          );

  }

}
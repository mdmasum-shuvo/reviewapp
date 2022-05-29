import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reviewapp/config/image.dart';

import '../../config/color.dart';

class CommonComponent{

  static Widget searchBar(){
    return Container(
      width: double.maxFinite,
      decoration: const BoxDecoration(color: CustomAppColor.colorPrimaryDark,
          borderRadius: BorderRadius.only(topLeft: Radius.zero,
              topRight: Radius.zero,
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16))),
      child:Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          decoration: const BoxDecoration(color: CustomAppColor.appBackgroundColor,
              borderRadius: BorderRadius.only(
                  topLeft:Radius.circular(8),
                  topRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                const Expanded(
                  child: SizedBox(
                    height: 50,
                          child: TextField(
                                //  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    ///hintText: "Search Restaurant or Dishes",
                                    fillColor: Colors.white,
                                    filled: true,
                                    contentPadding: EdgeInsets.symmetric(vertical: 4,horizontal: 8),
                                    floatingLabelBehavior: FloatingLabelBehavior.always,
                                  )),
                        ),




                ),
                SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(CustomAssetImage.iconSearch),
                    )
                )
              ],
            ),
          ),
        ),
      ),

        SizedBox(height: 10,)
      ],)


    );
  }
}
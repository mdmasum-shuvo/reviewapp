import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reviewapp/config/color.dart';
import 'package:reviewapp/config/theme.dart';
import 'package:reviewapp/model/restuarant_list.dart';

class HomeItemList extends StatelessWidget {
  const HomeItemList({Key? key, required this.data}) : super(key: key);

  final Restaurant data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 6),
      child: Container(
        width: double.infinity,
        height: 180,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Image(image: AssetImage(data.image), fit: BoxFit.cover),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(data.type,
                      style: CustomAppTheme.textTheme1.headline4),
                ),
              ),
              Positioned(
                  right: 0,
                  bottom: 0,
                  child: Stack(
                    children: [
                      Container(
                        height: 24,
                        decoration: BoxDecoration(
                            color: CustomAppColor.colorGray1.withOpacity(.5),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8))),
                        child:   Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Text(
                            data.name,
                            style: CustomAppTheme.textTheme1.bodyText2,
                          ),
                        ),
                      ),

                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

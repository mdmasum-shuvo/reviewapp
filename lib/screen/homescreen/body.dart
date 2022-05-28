import 'package:flutter/material.dart';
import 'package:reviewapp/config/theme.dart';

class HomeScreenBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SizedBox(

      child: Column(
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Home",style: CustomAppTheme.textTheme1.subtitle1,),
              SizedBox(width: 8,),
              Text("Shaymoli, Dhaka",style: CustomAppTheme.textTheme1.subtitle2,)
            ],
          )

        ],
      ),
    );
  }

}
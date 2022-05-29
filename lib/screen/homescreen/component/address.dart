import 'package:flutter/cupertino.dart';

import '../../../config/theme.dart';

Widget address() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "Home",
        style: CustomAppTheme.textTheme1.subtitle1,
      ),
      SizedBox(
        width: 8,
      ),
      Text(
        "Shaymoli, Dhaka",
        style: CustomAppTheme.textTheme1.subtitle2,
      ),
    ],
  );
}

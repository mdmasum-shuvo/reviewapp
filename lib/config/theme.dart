
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reviewapp/config/color.dart';
import 'package:reviewapp/config/image.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppTheme{
  CustomAppTheme._();
  static final ThemeData lightTheme= ThemeData(
    scaffoldBackgroundColor: CustomAppColor.appBackgroundColor,
    brightness: Brightness.light,
    textTheme: textTheme1,
    inputDecorationTheme: inputDecorationTheme()
  );

  static final TextTheme textTheme1 = TextTheme(
    headline1: GoogleFonts.balooDa2(
        fontSize: 97, fontWeight: FontWeight.w300, letterSpacing: -1.5),
    headline2: GoogleFonts.balooDa2(
        fontSize: 61, fontWeight: FontWeight.w300, letterSpacing: -0.5),
    headline3: GoogleFonts.balooDa2(fontSize: 48, fontWeight: FontWeight.w400),
    headline4: GoogleFonts.balooDa2(
        fontSize: 24, fontWeight: FontWeight.w900, letterSpacing: 0.25,color: CustomAppColor.appBackgroundColor),
    headline5: GoogleFonts.balooDa2(fontSize: 24, fontWeight: FontWeight.w400),
    headline6: GoogleFonts.balooDa2(
        fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
    subtitle1: GoogleFonts.balooDa2(
        fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.15,color: CustomAppColor.colorPrimaryDark),
    subtitle2: GoogleFonts.balooDa2(
        fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.1,color: CustomAppColor.colorBlack),
    bodyText1: GoogleFonts.balooDa2(
        fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
    bodyText2: GoogleFonts.balooDa2(
        fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.25,color: CustomAppColor.appBackgroundColor),
    button: GoogleFonts.balooDa2(
        fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
    caption: GoogleFonts.balooDa2(
        fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4,color: CustomAppColor.appBackgroundColor),
    overline: GoogleFonts.balooDa2(
        fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5,color: Colors.grey),
  );

  static  AppBar customAppBar(){
    return AppBar(
      elevation: 0,
      title: Stack(children: [
      Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 40,
                  width: 40,
                  child: CircleAvatar(backgroundImage: AssetImage(CustomAssetImage.personAsset),)),
              Expanded(child: Center(child: Text("DineNDeals",style:textTheme1.headline4,))),

              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(color: CustomAppColor.appBackgroundColor,borderRadius: BorderRadius.circular(8.00)),
                child: SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(CustomAssetImage.iconMegaPhone),
                    )
                ),
              )
            ],
          ),
        ],
      )

    ],),backgroundColor: CustomAppColor.colorPrimaryDark,);
  }

  static InputDecorationTheme inputDecorationTheme() {
    OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius:  BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8)),
      borderSide: const BorderSide(color: Colors.white),
      gapPadding: 5,
    );
    return InputDecorationTheme(
      floatingLabelBehavior: FloatingLabelBehavior.always,
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      border: outlineInputBorder,
    );
  }


/*  static final TextTheme lightTextTheme = TextTheme(
    titleLarge:_titleLargeLight ,
    titleMedium: titleMedium,
    titleSmall: titleMedium,
    subtitle1: _subTitleLight,
    subtitle2: _subTitleLight,
    button: _buttonLight,
    bodyLarge: _selectedTabLight,
    bodyMedium: _unSelectedTabLight,
    bodySmall: _subTitleLight
  );*/
  static final TextStyle _titleLargeLight = TextStyle(
    color: Colors.white,
    fontSize: 24,

  );

  static final TextStyle titleMedium = TextStyle(
    color: Colors.black,
    fontSize: 16,
  );

  static final TextStyle _subTitleLight = TextStyle(
    color: CustomAppColor.appBackgroundColor,
    height: 1.5,
  );

  static final TextStyle _buttonLight = TextStyle(
    color: Colors.black,
  );

  static final TextStyle _greetingLight = TextStyle(
    color: Colors.black,
  );

  static final TextStyle _searchLight = TextStyle(
    color: Colors.black,
  );

  static final TextStyle _selectedTabLight = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle _unSelectedTabLight = TextStyle(
    color: Colors.grey,
  );

  static final TextStyle _titleDarkLarge = _titleLargeLight.copyWith(color: Colors.black);
  static final TextStyle _titleDarkMedium = _titleLargeLight.copyWith(color: Colors.white);

  static final TextStyle _subTitleDark = _subTitleLight.copyWith(color: Colors.white70);

  static final TextStyle _buttonDark = _buttonLight.copyWith(color: Colors.black);

  static final TextStyle _greetingDark = _greetingLight.copyWith(color: Colors.black);

  static final TextStyle _searchDark = _searchDark.copyWith(color: Colors.black);

  static final TextStyle _selectedTabDark = _selectedTabDark.copyWith(color: Colors.white);

  static final TextStyle _unSelectedTabDark = _selectedTabDark.copyWith(color: Colors.white70);
}
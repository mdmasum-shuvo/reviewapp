
import 'package:flutter/material.dart';
import 'package:reviewapp/screen/homescreen/home_screen.dart';
import 'config/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: CustomAppTheme.lightTheme,
      home: HomeScreen(),

    );
  }
}


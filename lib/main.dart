import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'my_home.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor:  Color(0xff1E7145),
         ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
      title: 'أخضر',
      color: Color(0xff1E7145),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'cairo',
        bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.transparent),
        primaryTextTheme: TextTheme(
            headline6: TextStyle(color: Colors.black, fontFamily: 'cairo')),
        primaryIconTheme: IconThemeData(color: Colors.black),
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHome(),
    );
  }
}

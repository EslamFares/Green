import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'my_home.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.green[800],
      statusBarBrightness: Brightness.dark,
    ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //StatusBar hide in first way .so I use this
    // FlutterStatusbarcolor.setStatusBarColor(Colors.green[800]);
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

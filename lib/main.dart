import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'my_home.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.green,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'أخضر',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'cairo',
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

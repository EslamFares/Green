import 'package:flutter/material.dart';
import 'package:green/pages/account.dart';
import 'package:green/pages/discover_page.dart';
import 'package:green/pages/library_page.dart';
import 'package:green/pages/search_page.dart';
import 'pages/home_page.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int bottomIndex = 0;
List<Widget> bodyPages=[
  HomePage(),
  SearchPage(),
  DiscoverPage(),
  MyLibraryPage(),
  AccountPage(),
];
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: bodyPages[bottomIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 0.0,
          selectedIconTheme: IconThemeData(size: 30, color: Colors.green),
          unselectedFontSize: 0.0,
          showSelectedLabels: false,
          unselectedIconTheme: IconThemeData(size: 30, color: Colors.black87),
          iconSize: 30.0,
          selectedItemColor: Colors.green[800],
          unselectedItemColor: Colors.black87,
          currentIndex: bottomIndex,
          onTap: (value) {
            setState(() {
              bottomIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              title: Text(
                '',
                style: TextStyle(fontSize: 0.0),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30,
              ),
              title: Text(
                '',
                style: TextStyle(fontSize: 0.0),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.blur_circular,
                size: 30,
              ),
              title: Text(
                '',
                style: TextStyle(fontSize: 0.0),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.book,
                size: 30,
              ),
              title: Text(
                '',
                style: TextStyle(fontSize: 0.0),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                size: 30,
              ),
              title: Text(
                '',
                style: TextStyle(fontSize: 0.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
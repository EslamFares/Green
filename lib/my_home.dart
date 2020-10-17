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
  List<Widget> bodyPages = [
    HomePage(),
    SearchPage(),
    DiscoverPage(),
    MyLibraryPage(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    GlobalKey keyButtNav = GlobalKey();
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: bodyPages[bottomIndex],
        bottomNavigationBar: BottomNavigationBar(
          key: keyButtNav,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 0.0,
          selectedIconTheme: IconThemeData(size: 30, color: Color(0xff1E7145)),
          unselectedFontSize: 0.0,
          showSelectedLabels: true,
          unselectedIconTheme: IconThemeData(size: 30, color: Colors.grey),
          iconSize: 30.0,
          selectedItemColor: Color(0xff1E7145),
          unselectedItemColor: Colors.grey,
          currentIndex: bottomIndex,
          onTap: (value) {
            setState(() {
              bottomIndex = value;
            });
            // print('height = ${keyButtNav.currentContext.size.height}');
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              // ignore: deprecated_member_use
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
              // ignore: deprecated_member_use
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
              // ignore: deprecated_member_use
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
              // ignore: deprecated_member_use
              title: Text(
                '',
                style: TextStyle(fontSize: 0.0),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30,
              ),
              // ignore: deprecated_member_use
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

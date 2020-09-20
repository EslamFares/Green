import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green/widgets/LibraryWidgets/books_idea_library.dart';
import 'package:green/widgets/LibraryWidgets/books_library.dart';
import 'package:green/widgets/LibraryWidgets/markes_library.dart';

class MyLibraryPage extends StatefulWidget {
  @override
  _MyLibraryPageState createState() => _MyLibraryPageState();
}

class _MyLibraryPageState extends State<MyLibraryPage>
    with SingleTickerProviderStateMixin {
  GlobalKey scafolldBookLibrary = GlobalKey<ScaffoldState>();
  TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scafolldBookLibrary,
        appBar: AppBar(
            backgroundColor: ThemeData.light().scaffoldBackgroundColor,
            elevation: 0,
            title: Text(
              'مكتبتى',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            bottom: TabBar(
              indicatorColor: Colors.green,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 3.0,
              labelStyle: TextStyle(color: Colors.grey, fontFamily: 'cairo'),
              controller: _tabController,
              labelColor: Colors.green[800],
              unselectedLabelColor: Colors.black,
              tabs: <Widget>[
                Tab(child: Text('الكتب')),
                Tab(child: Text('العلامات')),
                Tab(child: Text('أفكار الكتب')),
              ],
            )),
        body: TabBarView(controller: _tabController, children: [
          BooksLibrary(
            scafolldBookLibrary: scafolldBookLibrary,
          ),
          MarkesLibrary(),
          BooksIdeaLibrary(scafolldBookLibrary: scafolldBookLibrary,),
        ]));
  }
}

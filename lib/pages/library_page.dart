import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green/widgets/LibraryWidgets/books_idea_library.dart';
import 'package:green/widgets/LibraryWidgets/books_library.dart';
import 'package:green/widgets/LibraryWidgets/markes_library.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../loading_page.dart';

class MyLibraryPage extends StatefulWidget {
  @override
  _MyLibraryPageState createState() => _MyLibraryPageState();
}

class _MyLibraryPageState extends State<MyLibraryPage>
    with SingleTickerProviderStateMixin {
  GlobalKey scafolldBookLibrary = GlobalKey<ScaffoldState>();
  TabController _tabController;
  bool loading = true;
  int indexTabBar=0;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        loading = false;
      });
    });
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
            actions: <Widget>[
              indexTabBar == 0
                  ? Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 10, bottom: 10),
                      child: FlatButton(
                        height: 40,
                        onPressed: () {
                          print('mylibrart app bar');
                          bottomSheetLibrary(context);
                        },
                        child: Container(
                          width: 90,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(50.0)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'الكل',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800),
                              ),
                              SizedBox(width: 5),
                              Icon(Icons.link)
                            ],
                          ),
                        ),
                      ),
                    )
                  : Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 15, bottom: 5),
                      child: Container(),
                    )
            ],
            bottom: TabBar(
              physics:ScrollPhysics(parent: ScrollPhysics()),
              indicatorColor: Colors.green,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 3.0,
              labelStyle: TextStyle(color: Colors.grey, fontFamily: 'cairo'),
              controller: _tabController,
              labelColor: Colors.green[800],
              unselectedLabelColor: Colors.black,
              onTap: (index) {
                setState(() {
                  indexTabBar = index;
                });
                print(index);
              },

              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  child: Container(
                    width: MediaQuery.of(context).size.width / 4.4,
                    child: Center(child: Text('الكتب')),
                  ),
                ),
                Tab(
                  child: Container(
                    width: MediaQuery.of(context).size.width / 4.4,
                    child: Center(child: Text('العلامات')),
                  ),
                ),
                Tab(
                    child: Container(
                        width: MediaQuery.of(context).size.width / 3.7,
                        child: Center(child: Text('مراجعات الكتب')))),
              ],
            )),
        body: loading
            ? LoadingPage()
            : TabBarView(
              physics: NeverScrollableScrollPhysics(),
              controller: _tabController, children: [
                BooksLibrary(
                  scafolldBookLibrary: scafolldBookLibrary,
                ),
                MarkesLibrary(),
                BooksIdeaLibrary(
                  scafolldBookLibrary: scafolldBookLibrary,
                ),
              ]));
  }

  Future bottomSheetLibrary(BuildContext context) {
    return showMaterialModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context, scrollController) => Container(
        height: MediaQuery.of(context).size.height * .49,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0))),
        child: Column(
          children: <Widget>[
            Divider(
              endIndent: MediaQuery.of(context).size.width / 2 - 25,
              indent: MediaQuery.of(context).size.width / 2 - 20,
              thickness: 3,
              height: 5,
              color: Colors.grey[900],
            ),
            Container(
              height: (MediaQuery.of(context).size.height * .45) / 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'الكل',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            Divider(
              endIndent: 15.0,
              indent: 15.0,
              thickness: 1.5,
              height: 2,
              color: Colors.grey,
            ),
            Container(
              height: (MediaQuery.of(context).size.height * .45) / 4.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'الكتب المحملة ',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            Divider(
              endIndent: 15.0,
              indent: 15.0,
              thickness: 1.5,
              height: 2,
              color: Colors.grey,
            ),
            Container(
              height: (MediaQuery.of(context).size.height * .45) / 4.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'لم تبدأ بعد',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            Divider(
              endIndent: 15.0,
              indent: 15.0,
              thickness: 1.5,
              height: 2,
              color: Colors.grey,
            ),
            Container(
              height: (MediaQuery.of(context).size.height * .45) / 4.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'بدأت في قراءة',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            Divider(
              endIndent: 15.0,
              indent: 15.0,
              thickness: 1.5,
              height: 2,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}

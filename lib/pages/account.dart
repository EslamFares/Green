import 'package:flutter/material.dart';
import 'package:green/pages/setting_pages/setting_home_page.dart';
import 'package:green/widgets/arrangement.dart';
import 'package:green/widgets/board.dart';
import 'package:green/widgets/charts.dart';
import '../loading_page.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  bool loading = true;
  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 3, initialIndex: 2);
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        loading = false;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          iconTheme: new IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(right: 2.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                'حسابي',
                style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingPage()));
              },

              /*  GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingPage()));
              },*/
              child: Container(
                // margin: EdgeInsets.only(left: 10),
                // color: Colors.red,
                width: 50,
                height: 50,
                child: Center(
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.black12.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Icon(
                      Icons.menu,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        body: loading
            ? LoadingPage()
            : NestedScrollView(
                //   controller: _scrollController,
                headerSliverBuilder:
                    (BuildContext context, bool innerViewIsScrolled) {
                  return <Widget>[
                    SliverAppBar(
                      backgroundColor: Colors.white,
                      flexibleSpace: FlexibleSpaceBar(
                        collapseMode: CollapseMode.pin,
                        background: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Center(
                                child: Stack(children: [
                                  ClipRRect(
                                    child: Container(
                                      height: 105,
                                      width: 105,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: Colors.white,
                                          border: Border.all(
                                              width: 3,
                                              color: Colors.green[800])),
                                      child: Center(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          child: Container(
                                            color: Colors.green[800],
                                            height: 90,
                                            width: 90,
                                            child: Icon(
                                              Icons.person,
                                              size: 60,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                              ),
                              Center(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Username',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              )),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 220,
                                    height: 45,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Icon(
                                          Icons.person,
                                          color: Colors.grey,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('العضوية العادية',
                                              style: TextStyle(
                                                  fontSize: 11.0,
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.grey)),
                                        ),
                                        Container(
                                          height: 45,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(80),
                                            child: Container(
                                              height: 0,
                                              width: 90,
                                              child: RaisedButton(
                                                onPressed: () {},
                                                child: Text('ترقية',
                                                    style: TextStyle(
                                                        fontSize: 15.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: Colors.white)),
                                                color: Colors.green[800],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),

                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Container(
                                    width: 108,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: Color(0xffdcdfe3),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image(
                                            image: AssetImage(
                                                'assets/images/images/egypt.png'),
                                            width: 30,
                                          ),
                                        ),
                                        Text('مصر',
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.black)),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          size: 16,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              //    ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, top: 18),
                                    child: Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            color: Colors.green,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 6.0, left: 3),
                                              child: Center(
                                                child: Text('أخضر ',
                                                    style: TextStyle(
                                                        fontSize: 9.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 18.0),
                                    child: Text(
                                      '50',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 18.0),
                                    child: Text(' نقطة',
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black)),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                      expandedHeight: 360.0,
                      pinned: true,
                      floating: true,
                      elevation: 0.0,
                      forceElevated: innerViewIsScrolled,
                      bottom: TabBar(
                        unselectedLabelColor: Colors.grey,
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            color: Colors.green[800]),
                        tabs: <Widget>[
                          Tab(
                            child: Text(
                              "الرصيد",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "الترتيب",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "اللوحة",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                        controller: _tabController,
                      ),
                    )
                  ];
                },
                body: TabBarView(
                  children: <Widget>[
                    LineCharts(),
                    Arrangement(),
                    Board(),
                  ],
                  controller: _tabController,
                ),
              ),
      ),
    );
  }
}

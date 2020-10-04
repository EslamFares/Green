import 'package:flutter/material.dart';
<<<<<<< HEAD

import 'package:green/pages/setting_pages/setting_page.dart';
=======
import 'package:green/pages/setting_pages/setting_home_page.dart';

import '../loading_page.dart';
>>>>>>> 75f46e58a69b52dad32208e012ff558d5d32b0bb

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

<<<<<<< HEAD
class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 3, initialIndex: 2);

    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
=======
class _AccountPageState extends State<AccountPage> {
  bool loading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        loading = false;
      });
    });
>>>>>>> 75f46e58a69b52dad32208e012ff558d5d32b0bb
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
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
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingPage()));
              },
              //  Navigator.of(context).pushAndRemoveUntil(
              //    MaterialPageRoute(
              //      builder: (context) => SettingAcountpage()),
              // (Route<dynamic> route) => false);
              //  },
              child: Container(
                margin: EdgeInsets.only(left: 10),
                width: 35,
                height: 35,
                child: Center(
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.black12.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Icon(
                      Icons.menu,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        //  drawer: Container(
        // width: 800,
        // color: Colors.green[900],
        //child: Drawer(
        //child: Container(
        //color: Colors.green[800],
        //child: ListView(
        // Important: Remove any padding from the ListView.
        //padding: EdgeInsets.zero,
        //children: <Widget>[
        //SizedBox(
        //height: 210,
        //),
        //Row(
        //mainAxisAlignment: MainAxisAlignment.end,
        //children: [
        //Padding(
        //padding: const EdgeInsets.only(right: 207.0),
        //child: Icon(
        //Icons.arrow_back_ios,
        // size: 25,
        //color: Colors.white,
        // ),
        // ),
        // Text('السجل',
        // style: TextStyle(
        //    fontSize: 25.0,
        //   fontWeight: FontWeight.bold,
        //   color: Colors.white)),
        // Padding(
        //  padding: const EdgeInsets.all(18.0),
        //  child: Icon(
        //   Icons.watch,
        //   color: Colors.white,
        //   size: 35,
        // ))
        // ],
        // ),
        // Row(
        //  mainAxisAlignment: MainAxisAlignment.end,
        //  children: [
        //  Padding(
        //  padding: const EdgeInsets.only(right: 180.0),
        //child: Icon(
        //Icons.arrow_back_ios,
        //size: 25,
        //color: Colors.white,
        // ),
        // ),
        // Text('الإعجابات',
        //  style: TextStyle(
        //    fontSize: 25.0,
        //  fontWeight: FontWeight.bold,
        //color: Colors.white)),
        //  Padding(
        //    padding: const EdgeInsets.all(18.0),
        //  child: Icon(
        //  Icons.favorite,
        //color: Colors.white,
        //size: 35,
        // ))
        //  ],
        //   ),
        //  Row(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //  children: [
        //    Padding(
        //    padding: const EdgeInsets.only(right: 172.0),
        //   child: Icon(
        //   Icons.arrow_back_ios,
        // size: 25,
        //color: Colors.white,
        //  ),
        // ),
        //Text('مساعدة ',
        //  style: TextStyle(
        //    fontSize: 25.0,
        //  fontWeight: FontWeight.bold,
        //color: Colors.white)),
        //      Padding(
        //        padding: const EdgeInsets.all(18.0),
        //      child: Icon(
        //      Icons.info_outline,
        //    color: Colors.white,
        //  size: 35,
        //      ))
        // ],
        // ),
        // Row(
        // mainAxisAlignment: MainAxisAlignment.end,
        // children: [
        //   Padding(
        //    padding: const EdgeInsets.only(right: 178.0),
        //  child: Icon(
        //  Icons.arrow_back_ios,
        //size: 25,
        //color: Colors.white,
        // ),
        // ),
        // Text('الإعدادات',
        //   style: TextStyle(
        //     fontSize: 25.0,
        //   fontWeight: FontWeight.bold,
        // color: Colors.white)),
        //Padding(
        //  padding: const EdgeInsets.all(18.0),
        //child: Icon(
        //Icons.settings,
        //color: Colors.white,
        //size: 35,
        //))
        //],
        // ),
        //  Padding(
        //  padding: const EdgeInsets.only(top: 90.0),
        //child: InkWell(
        //onTap: () {
        //Navigator.pop(context);
        // },
        // child: Icon(
        //   Icons.cancel,
        //   color: Colors.white,
        //  size: 39,

        //   ],
        //  ),
        //  ),
        // ),
        //),
        body: NestedScrollView(
          //   controller: _scrollController,
          headerSliverBuilder:
              (BuildContext context, bool innerViewIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.white,
                flexibleSpace: FlexibleSpaceBar(
                  //  collapseMode: CollapseMode.parallax,
                  background: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 18.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Container(
                              color: Colors.green[800],
                              height: 90,
                              width: 90,
                              child: Icon(
                                Icons.person,
                                size: 65,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Center(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Afnan',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 200,
                                height: 45,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
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
                                  ],
                                ),
                              ),
                              Positioned(
                                child: Container(
                                  height: 45,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(80),
                                    child: Container(
                                      height: 0,
                                      width: 90,
                                      child: RaisedButton(
                                        onPressed: () {},
                                        child: Text('ترقية',
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.white)),
                                        color: Colors.green[800],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 18.0),
                            child: Text(
                              '12',
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
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0, top: 18),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    color: Colors.green,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 6.0, left: 3),
                                      child: Text('اخضر ',
                                          style: TextStyle(
                                              fontSize: 9.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                expandedHeight: 350.0,
                pinned: true,
                floating: true,
                elevation: 0.0,
                forceElevated: innerViewIsScrolled,
                bottom: TabBar(
                  labelColor: Colors.blue,
                  tabs: <Widget>[
                    Text(
                      "الرصيد",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "الترتيب",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "اللوحة",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                  controller: _tabController,
                ),
              )
            ];
          },
          body: TabBarView(
            children: <Widget>[
              ChartsInfo(),
              Tartiib(),
              Tartiib(),
            ],
            controller: _tabController,
          ),
        ),
      ),
      body: loading
          ? LoadingPage()
          : Container(child: Center(child: Icon(Icons.account_circle))),
    );
  }

//   Widget stackName() {
//     return Stack(
//       children: [
//         ClipRRect(
//           borderRadius: BorderRadius.circular(50),
//           child: Container(
//             height: 40,
//             width: 40,
//             color: Colors.green,
//           ),

//   }
}

class ChartsInfo extends StatefulWidget {
  @override
  _ChartsInfoState createState() => _ChartsInfoState();
}

class _ChartsInfoState extends State<ChartsInfo> {
  List<String> chartImages = [
    'assets/images/images/aa.jpg',
    'assets/images/images/bb.jpg',
    'assets/images/images/bb.jpg',
    'assets/images/images/aa.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: chartImages.map((e) => Image.asset(e)).toList()));
  }
}

class Tartiib extends StatefulWidget {
  @override
  _TartiibState createState() => _TartiibState();
}

class _TartiibState extends State<Tartiib> {
  List<String> tartiibImages = [
    'assets/images/images/CCC.jpg',
    'assets/images/images/MMM.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: tartiibImages.map((e) => Image.asset(e)).toList()));
  }
}

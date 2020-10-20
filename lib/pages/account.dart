import 'package:flutter/material.dart';
import 'package:green/pages/setting_pages/setting_home_page.dart';
import 'package:green/widgets/SettingWidgets/accountWidgets/countrydata.dart';
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
  int indexCountryChose = 1;
  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 3, initialIndex: 0);
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
            Container(
              margin: EdgeInsets.only(left: 5),
                 width: 40,
                height: 40,
                // color: Colors.red,
              child: FlatButton(
                padding: EdgeInsets.all(0),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SettingPage()));
                },
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
                    appbarSliver(innerViewIsScrolled),
                  ];
                },
                body: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
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

  SliverAppBar appbarSliver(bool innerViewIsScrolled) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        background:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                Widget>[
          Center(
            child: Stack(children: [
              ClipRRect(
                child: Container(
                  height: 105,
                  width: 105,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                      border: Border.all(width: 3, color: Color(0xff1E7145))),
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        color: Color(0xff1E7145),
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
                    borderRadius: BorderRadius.all(Radius.circular(30))),
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
                            color: Color(0xff1E7145),
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
                child: FlatButton(
                  onPressed: () {
                    showDialogCountries(context);
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    width: 130,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Color(0xffdcdfe3),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 35,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      countryFlags[indexCountryChose]['flag']),
                                  fit: BoxFit.cover)),
                        ),
                        Text(countryFlags[indexCountryChose]['name'],
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
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 18),
                child: Container(
                  // color: Colors.red,
                  height: 30,
                  width: 60,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 20,
                        bottom: 0,
                        child: Center(
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Color(0xff1E7145),
                              shape: BoxShape.circle,
                              // border: Border.all(
                              //     width: 2, color: Color(0xff1E7145))
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 15,
                        bottom: 0,
                        child: Center(
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              // border: Border.all(
                              //     width: 2, color: Color(0xff1E7145))
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        bottom: 0,
                        child: Center(
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Color(0xff1E7145),
                              shape: BoxShape.circle,
                              // border: Border.all(
                              //     width: 2, color: Color(0xff1E7145))
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 5,
                        bottom: 0,
                        child: Center(
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              // border: Border.all(
                              //     width: 2, color: Color(0xff1E7145))
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 2.5,
                        bottom: 0,
                        child: Center(
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 2, color: Color(0xff1E7145))),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 6,
                        bottom: 3.5,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Container(
                            height: 23,
                            width: 23,
                            color: Color(0xff1E7145),
                            child: Center(
                              child: Text('أخضر ',
                                  style: TextStyle(
                                      fontSize: 9.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
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
      expandedHeight: 370.0,
      pinned: true,
      floating: true,
      elevation: 5.0,
      forceElevated: innerViewIsScrolled,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
              child: TabBar(
                unselectedLabelColor: Colors.grey,
                indicatorWeight: 1,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xff1E7145),
                ),
                tabs: <Widget>[
                  Tab(
                    child: Text(
                      "الرصيد",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "الترتيب",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "اللوحة",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future showDialogCountries(BuildContext context) {
    return showDialog(

      context: context,
      builder: (context) {
        return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)),
            title: Directionality(
              textDirection: TextDirection.rtl,
                          child: TextFormField(
                
                textDirection: TextDirection.rtl,
                decoration: InputDecoration(hintText: '...اختر دولتك',
                prefixIcon:Icon(
                      Icons.search,
                      color: Colors.black54,
                      size: 30,
                    ),
                    suffixIcon: Icon(
                      Icons.highlight_off,
                      color: Colors.black54,
                      size: 25,
                    ),
                ),
              ),
            ),
            content: Container(
              height: MediaQuery.of(context).size.height * .7,
              width: MediaQuery.of(context).size.width * .65,
              child: ListView.builder(
                itemCount: countryFlags.length,
                itemBuilder: (context, index) {
                  return country(countryFlags[index]['name'],
                      countryFlags[index]['flag'], countryFlags[index]['id']);
                },
              ),
            ));
      },
    );
  }

  Widget country(String title, String flag, String index) {
    return InkWell(
      onTap: () {
        setState(() {
          indexCountryChose = int.parse(index);
        });
        Navigator.pop(context);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  indexCountryChose == int.parse(index)
                      ? Icon(
                          Icons.check_box,
                          color:  Color(0xff1E7145),
                          size: 30,
                        )
                      : Container(),
                  Row(
                    children: [
                      Text(title),
                      SizedBox(width: 10),
                      Container(
                        width: 45,
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            image: DecorationImage(
                                image: NetworkImage(flag), fit: BoxFit.cover)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Divider(
              height: 2,
              thickness: 2,
            )
          ],
        ),
      ),
    );
  }
}

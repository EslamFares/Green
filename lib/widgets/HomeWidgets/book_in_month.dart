import 'package:flutter/material.dart';
import 'package:green/Data/data.dart';

class BookInMonth extends StatefulWidget {
  @override
  _BookInMonthState createState() => _BookInMonthState();
}

class _BookInMonthState extends State<BookInMonth> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
            semanticChildCount: 4, slivers: <Widget>[appbar(context), body()]),
      ),
    );
  }

  SliverGrid body() {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 1,
        mainAxisSpacing: 7,
        childAspectRatio: .8,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Container(
            margin: EdgeInsets.only(left: 5, right: 5),
            width: MediaQuery.of(context).size.width / 2,
            decoration: BoxDecoration(
                color: Color(0xff1E7145),
                borderRadius: BorderRadius.circular(20.0)),
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff1E7145).withOpacity(.7),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      height: 192,
                      child: Stack(
                        alignment: Alignment.center,
                        fit: StackFit.expand,
                        children: <Widget>[
                          Center(
                              child: FlutterLogo(
                            size: 350.0,
                          )),
                          Container(
                            height: 240,
                            decoration: BoxDecoration(
                                color: Colors.green[900].withOpacity(.4),
                                borderRadius: BorderRadius.circular(20.0)),
                          ),
                          Center(
                              child: Container(
                            width: MediaQuery.of(context).size.width / 2,
                            height: 120,
                            // color: Colors.amber,
                            child: Center(
                              child: Text(
                                'مجد التاجر في كيسة ومجد العالم في كتبة',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                          ))
                        ],
                      )),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      width: MediaQuery.of(context).size.width / 2 - 12,
                      decoration: BoxDecoration(
                          color: Colors.green[800], //Color(0xff1E7145),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0))),
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'كتب مايو المفتوحة',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 12),
                          ),
                          Center(
                              child: Text(
                            '6',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 16),
                          ))
                        ],
                      )),
                ),
              ],
            ),
          );
        },
        childCount: DataSource.booksInfo.length,
      ),
    );
  }

  SliverAppBar appbar(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      floating: false,
      pinned: true,
      snap: false,
      expandedHeight: 100.0,
      automaticallyImplyLeading: false,
      titleSpacing: 15.0,
      flexibleSpace: FlexibleSpaceBar(
          titlePadding: EdgeInsets.only(right: 50, bottom: 10),
          collapseMode: CollapseMode.pin,
          title: Text('قؤائم الكتب',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w900))),
      leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.green[800],
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}

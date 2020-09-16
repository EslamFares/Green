import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ThemeData.light().scaffoldBackgroundColor,
          elevation: 0.0,
          title: Text(
            'الرئيسية',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          actions: <Widget>[
            GestureDetector(
              onTap: () {
                print('notifications');
              },
              child: Container(
                margin: EdgeInsets.only(left: 10),
                width: 35,
                height: 35,
                child: Center(
                  child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.black12.withOpacity(.1),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Transform.rotate(
                          angle: -0.7,
                          child: Icon(
                            Icons.notifications_none,
                            size: 30,
                          ))),
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
              // padding: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height -
                  AppBar().preferredSize.height,
              child: Column(
                children: <Widget>[
                  booksDepartment(
                      title: 'الأقسام',
                      function: () {
                        print('alaksam');
                      }),
                  listDepartment(context)
                ],
              )),
        ),
      ),
    );
  }

  Container listDepartment(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      padding: EdgeInsets.symmetric(vertical: 5),
      margin: EdgeInsets.only(right: 5),
      // color: Colors.red,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (context, index) {
            return Container(
              // color: Colors.amber,
              height: 195,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Center(
                      child: Icon(
                        DataSource.iconDepart[index],
                        color: Colors.white,
                        size: 70,
                      ),
                    ),
                  ),
                  Container(
                    // color: Colors.blue,
                    margin: EdgeInsets.only(left: 10),
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: 30,
                    child: Center(
                        child: Text(
                      "${DataSource.namesDepart[index]}",
                      style: TextStyle(fontSize: 14),
                    )),
                  )
                ],
              ),
            );
          }),
    );
  }

  Widget booksDepartment(
      {@required String title, @required Function function}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              height: .9,
              fontWeight: FontWeight.w800,
            ),
          ),
          GestureDetector(
            onTap: function,
            child: Container(
              height: 30,
              width: 60,
              // color: Colors.red,
              child: Center(
                child: Text(
                  'المزيد...',
                  style: TextStyle(
                    fontSize: 16,
                    height: .9,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

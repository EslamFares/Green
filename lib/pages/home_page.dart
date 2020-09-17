import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green/widgets/books_type.dart';
import 'package:green/widgets/list_book_review.dart';
import 'package:green/widgets/list_department.dart';
import 'package:green/widgets/month_lists.dart';
import 'package:green/widgets/title_department.dart';

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
              // color: Colors.red,
              // padding: EdgeInsets.all(10),
              // height: MediaQuery.of(context).size.height*2,
              child: Column(
            children: <Widget>[
              titleDepartment(
                  title: 'الأقسام',
                  function: () {
                    print('alaksam');
                  }),
              listDepartment(context),
              SizedBox(height: 10),
              titleDepartment(
                  title: 'أفكار الكتب',
                  function: () {
                    print('afkar elkotob');
                  }),
              listBookReview(context),
              titleDepartment(
                  title: 'خصيصا لك',
                  function: () {
                    print('5sysan lk');
                  }),
              booksType(context),
              titleDepartment(
                  title: 'الأكثر قراءة',
                  function: () {
                    print('alaksr kra2h');
                  }),
              booksType(context),
              titleDepartment(
                  title: 'جديد الكتب',
                  function: () {
                    print('gaded elkotb');
                  }),
              booksType(context),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Row(
                  children: <Widget>[
                    Text(
                      'القوائم',
                      style: TextStyle(
                        fontSize: 18,
                        height: .9,
                        fontWeight: FontWeight.w800,
                      ),
                    )
                  ],
                ),
              ),
              monthLists(context),
              SizedBox(height: 50)
            ],
          )),
        ),
      ),
    );
  }
}

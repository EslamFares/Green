import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green/widgets/HomeWidgets/books_type.dart';
import 'package:green/widgets/HomeWidgets/list_department.dart';
import 'package:green/widgets/HomeWidgets/month_lists.dart';
import 'package:green/widgets/HomeWidgets/bookreveiw_carouselchild.dart';
import 'package:green/widgets/HomeWidgets/title_department.dart';
import 'HomePages/departments.dart';
import 'HomePages/books_reviw.dart';

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
          actions: <Widget>[actionAppBarButton()],
        ),
        body: SingleChildScrollView(
          child: Container(
              child: Column(
            children: <Widget>[
              titleDepartment(
                  title: 'الأقسام',
                  function: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>DepartmentsPage()));
                  }),
              listDepartment(context),
              SizedBox(height: 10),
              titleDepartment(
                  title: 'مراجعة الكتب',
                  function: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>BooksReviewPage()));
                  }),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 220,
                child: Carousel(
                  images: [
                    bookReveiwCarouselChild(context, 0),
                    bookReveiwCarouselChild(context, 1),
                    bookReveiwCarouselChild(context, 2),
                    bookReveiwCarouselChild(context, 3),
                    bookReveiwCarouselChild(context, 4),
                  ],
                  dotSize: 4.0,
                  dotSpacing: 15.0,
                  dotColor: Colors.grey,
                  dotPosition: DotPosition.bottomCenter,
              
                  dotIncreasedColor: Colors.green[900],
                  indicatorBgPadding: 5.0,
                  dotBgColor: ThemeData.light().scaffoldBackgroundColor,
                  borderRadius: true,
                ),
              ),
              // listBookReview(context),
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
               titleDepartment(
                  title: 'القوائم',
                  function: () {
                    print('alkwa2em');
                  }),
              monthLists(context),
              SizedBox(height: 50)
            ],
          )),
        ),
      ),
    );
  }

  Widget actionAppBarButton() {
    return GestureDetector(
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
    );
  }
}

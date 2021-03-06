import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green/widgets/HomeWidgets/book_in_month.dart';
import 'package:green/widgets/HomeWidgets/book_review_carousel.dart';
import 'package:green/widgets/HomeWidgets/books_type.dart';
import 'package:green/widgets/HomeWidgets/list_department.dart';
import 'package:green/widgets/HomeWidgets/month_lists.dart';
import 'package:green/widgets/HomeWidgets/title_department.dart';
import 'HomePages/Lists_books_title.dart';
import 'HomePages/departments.dart';
import 'HomePages/books_reviw.dart';
import 'HomePages/notification.dart';

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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DepartmentsPage()));
                  }),
              listDepartment(context),
              titleDepartment(
                  title: 'مراجعة الكتب',
                  function: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BooksReviewPage()));
                  }),
              bookReviewCarousel(context),
              // listBookReview(context),
              titleDepartment(
                  title: 'خصيصا لك',
                  function: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ListsOfBooksByTitle(
                              appbarTitle: 'خصيصا لك',
                            )));
                  }),
              booksType(context),
              titleDepartment(
                  title: 'الأكثر قراءة',
                  function: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ListsOfBooksByTitle(
                              appbarTitle: 'الأكثر قراءة',
                            )));
                  }),
              booksType(context),
              titleDepartment(
                  title: 'جديد الكتب',
                  function: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ListsOfBooksByTitle(
                              appbarTitle: 'جديد الكتب',
                            )));
                  }),
              booksType(context),
              titleDepartment(
                  title: 'القوائم',
                  function: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => BookInMonth()));
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
    return Container(
      margin: EdgeInsets.only(left: 5),
      width: 40,
      child: FlatButton(
        // color: Colors.red,
       padding: EdgeInsets.all(0),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => NotificationPage()),
          );
        },
        child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.black12.withOpacity(.07),
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Transform.rotate(
                angle: -0.3,
                child: Icon(
                  Icons.notifications_none,
                  size: 30,
                ))),
      ),
    );
  }
}

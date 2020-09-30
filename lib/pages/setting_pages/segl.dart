import 'package:flutter/material.dart';
import 'package:green/widgets/SettingWidgets/action_appbar_button.dart';
import 'package:green/widgets/SettingWidgets/seglWidgets/book_idea_in_segl.dart';
import 'package:green/widgets/SettingWidgets/seglWidgets/books_in_segl.dart';
import 'package:green/widgets/SettingWidgets/seglWidgets/bottom_setting_Segl.dart';

class SgelPage extends StatefulWidget {
  @override
  _SgelPageState createState() => _SgelPageState();
}

class _SgelPageState extends State<SgelPage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: ThemeData.light().scaffoldBackgroundColor,
          elevation: 0,
          centerTitle: false,
          title: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.green,
                    size: 25,
                  ),
                  Text('رجوع',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w700,
                          fontSize: 16)),
                ],
              ),
            ),
          ),
          actions: <Widget>[
            actionAppBarButton(
                context: context,
                icon: Icons.more_vert,
                function: () {
                  return bottomSettingInSegl(context);
                })
          ],
        ),
        body: Container(
          padding: EdgeInsets.only(right: 15),
          height: MediaQuery.of(context).size.height -
              AppBar().preferredSize.height,
          width: MediaQuery.of(context).size.width,
          // color: Colors.red,
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'السجل',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '8',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: <Widget>[
                    Text(
                      'الكتب',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              BooksInSegl(),
              Row(
                children: <Widget>[
                  Text(
                    'أفكار الكتب',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              BookIdeaInSegl(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

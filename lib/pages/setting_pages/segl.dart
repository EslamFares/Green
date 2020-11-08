import 'package:flutter/material.dart';
import 'package:green/widgets/SettingWidgets/action_appbar_button.dart';
import 'package:green/widgets/SettingWidgets/seglWidgets/book_idea_in_segl.dart';
import 'package:green/widgets/SettingWidgets/seglWidgets/books_in_segl.dart';
import 'package:green/widgets/SettingWidgets/seglWidgets/bottom_setting_Segl.dart';

import '../../loading_page.dart';

class SgelPage extends StatefulWidget {
  @override
  _SgelPageState createState() => _SgelPageState();
}

class _SgelPageState extends State<SgelPage> {
  bool loading = true;
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        loading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor:
              Colors.white, // ThemeData.light().scaffoldBackgroundColor,
          elevation: 0,
          centerTitle: false,
          title: FlatButton(
            child: Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Color(0xff1E7145),
                    ),
                  ],
                )),
            onPressed: () {
              Navigator.pop(context);
            },
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
        body: loading
            ? LoadingPage()
            : Container(
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
                            '20',
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
                          'مراجعات الكتب',
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    BookIdeaInSegl(),
                    SizedBox(height: 50),
                  ],
                ),
              ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:green/pages/setting_pages/setting_home_page.dart';

import '../loading_page.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeData.light().scaffoldBackgroundColor,
        elevation: 0,
        title: Text(
          'حسابي',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingPage()));
              // Navigator.of(context).pushAndRemoveUntil(
              //     MaterialPageRoute(builder: (context) => SettingPage()),
              //     (Route<dynamic> route) => false);
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
                    child: Icon(
                      Icons.menu,
                      color: Colors.black,
                      size: 30,
                    )),
              ),
            ),
          )
        ],
      ),
      body: loading
          ? LoadingPage()
          : Container(child: Center(child: Icon(Icons.account_circle))),
    );
  }
}

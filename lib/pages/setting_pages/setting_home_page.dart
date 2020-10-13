import 'package:flutter/material.dart';
import 'package:green/pages/setting_pages/segl.dart';
import 'package:green/pages/setting_pages/likes.dart';
import 'package:green/pages/setting_pages/help.dart';
import 'package:green/pages/setting_pages/setting_account.dart';
import 'package:green/widgets/SettingWidgets/back_version.dart';
import 'package:green/widgets/SettingWidgets/setting_title.dart';
import 'setting_account.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Color(0xff1E7145),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SgelPage()));
                          },
                          child: flatButtonTitle(
                              context: context,
                              icon: Icons.history,
                              title: 'السجل'),
                        ),
                        FlatButton(
                          colorBrightness: Brightness.light,
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => LikesPage()));
                          },
                          child: flatButtonTitle(
                              context: context,
                              icon: Icons.favorite,
                              title: 'الإعجابات'),
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => HelpPage()));
                          },
                          child: flatButtonTitle(
                              context: context,
                              icon: Icons.info_outline,
                              title: 'مساعدة'),
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SettingAcountpage()));
                          },
                          child: flatButtonTitle(
                              context: context,
                              icon: Icons.settings,
                              title: 'الإعدادات'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: backAndVersion(context),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget flatButtonTitle(
      {BuildContext context, String title, IconData icon}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width - 30,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              size: 35,
              color: Colors.white,
            ),
            SizedBox(width: 20),
            Text(
              title,
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Spacer(
              flex: 6,
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 25,
              color: Colors.white,
            ),
            Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}

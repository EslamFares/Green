import 'package:flutter/material.dart';
import 'package:green/pages/setting_pages/segl.dart';
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
        backgroundColor: Colors.green,
        body: Container(
          // color: Colors.amber,
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    // color: Colors.pink,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        settingTitle(
                            context: context,
                            function: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SgelPage()));
                            },
                            icon: Icons.history,
                            title: 'السجل'),
                        settingTitle(
                            context: context,
                            function: () {
                              print('like');
                            },
                            icon: Icons.favorite,
                            title: 'الإعجابات'),
                        settingTitle(
                            context: context,
                            function: () {
                              print('help');
                            },
                            icon: Icons.info_outline,
                            title: 'مساعدة'),
                        settingTitle(
                            context: context,
                            function: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SettingAcountpage()));
                            },
                            icon: Icons.settings,
                            title: 'الإعدادات'),
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
}

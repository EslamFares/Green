import 'package:flutter/material.dart';

class SettingAcountpage extends StatefulWidget {
  @override
  _SettingAcountpageState createState() => _SettingAcountpageState();
}

class _SettingAcountpageState extends State<SettingAcountpage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
          child: Scaffold(
        appBar: AppBar(title: Text('الاعدادت'),),
      ),
    );
  }
}
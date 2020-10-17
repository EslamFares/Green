import 'package:flutter/material.dart';

class OpenBookpage extends StatefulWidget {
  @override
  _OpenBookpageState createState() => _OpenBookpageState();
}

class _OpenBookpageState extends State<OpenBookpage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
          child: Scaffold(
        appBar: AppBar(title: Text('داخل الكتاب '),),
      ),
    );
  }
}
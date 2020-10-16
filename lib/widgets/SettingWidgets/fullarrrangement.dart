import 'package:flutter/material.dart';

class FullArrangement extends StatefulWidget {
  @override
  _FullArrangementState createState() => _FullArrangementState();
}

class _FullArrangementState extends State<FullArrangement> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      ),
    );
  }
}

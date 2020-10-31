import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
         height: MediaQuery.of(context).size.height -
            AppBar().preferredSize.height ,
            width:MediaQuery.of(context).size.width ,
        color: Colors.white,
        child: Stack(
    alignment: Alignment.center,
    children: <Widget>[
      Container(
        height: MediaQuery.of(context).size.height -
            AppBar().preferredSize.height -
            56,
            color: Colors.white,
        child: Center(
          child: Text(
            'أخضر',
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 60.0,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = .1
                  ..color = Color(0xff1E7145)),
          ),
        ),
      ),
      Center(
        child: TextLiquidFill(
          text: 'أخضر',
          waveColor: Color(0xff1E7145),
          loadDuration: Duration(milliseconds: 2500),
          waveDuration: Duration(milliseconds: 2500),
          boxBackgroundColor:Colors.white,// ThemeData.light().scaffoldBackgroundColor,
          textStyle: TextStyle(
            fontSize: 60.0,
            fontWeight: FontWeight.w900,
          ),
          boxHeight: MediaQuery.of(context).size.height -
              AppBar().preferredSize.height -
              56,
        ),
      ),
    ],
        ),
      );
  }
}

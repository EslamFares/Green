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
      color: Colors.white,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height -
                AppBar().preferredSize.height -
                56,
            child: Center(
              child: Text(
                'أخضر',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 35.0,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 1
                      ..color = Colors.green),
              ),
            ),
          ),
          Center(
            child: TextLiquidFill(
              text: 'أخضر',
              waveColor: Colors.green,
              loadDuration: Duration(milliseconds: 1000),
              waveDuration: Duration(milliseconds: 2000),
              boxBackgroundColor: ThemeData.light().scaffoldBackgroundColor,
              textStyle: TextStyle(
                fontSize: 35.0,
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

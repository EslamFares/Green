import 'package:flutter/material.dart';

Widget backAndVersion(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 50,
              height: 50,
              child: Center(
                child: Icon(
                  Icons.highlight_off,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'إصدار 2.3.3',
            style: TextStyle(color: Colors.white70),
          )
        ],
      ),
    );
  }

 import 'package:flutter/material.dart';

Widget actionAppBarButton({BuildContext context, IconData icon,Function function}) {
    return FlatButton(
            onPressed: function,
            child: Container(
              margin: EdgeInsets.only(left: 0,top: 5),
              width: 40,
              height: 40,
              // color: Colors.amber,
              child: Center(
                child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.black12.withOpacity(.1),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Icon(
                     icon,
                      size: 30,
                    )),
              ),
            ),
          );
  }
 import 'package:flutter/material.dart';

Widget actionAppBarButton({BuildContext context, IconData icon,Function function}) {
    return GestureDetector(
            onTap: function,
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
                     icon,
                      size: 30,
                    )),
              ),
            ),
          );
  }
 import 'package:flutter/material.dart';

Widget settingTitle({
    BuildContext context,
    Function function,
    String title,
    IconData icon,
  }) {
    return GestureDetector(
      onTap: function,
      child: Container(
          margin: EdgeInsets.only(bottom: 5),
          // color: Colors.amber,
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
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Spacer(
                flex: 5,
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
          )),
    );
  }
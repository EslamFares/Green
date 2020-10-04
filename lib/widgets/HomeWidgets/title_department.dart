import 'package:flutter/material.dart';

Widget titleDepartment({@required String title, @required Function function}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            height: .9,
            fontWeight: FontWeight.w800,
          ),
        ),
        GestureDetector(
          onTap: function,
          child: Container(
            height: 30,
            width: 60,
            // color: Colors.red,
            child: Center(
              child: Text(
                'الكل',
                style: TextStyle(
                  fontSize: 16,
                  height: .7,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

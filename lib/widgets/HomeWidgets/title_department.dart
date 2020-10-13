import 'package:flutter/material.dart';

Widget titleDepartment({@required String title, @required Function function}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 5, left: 10,right: 10,top: 15),
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
            height: 35,
            width: 100,
            // color: Colors.red,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                
                  Text(
                    'الكل',
                    style: TextStyle(
                      fontSize: 16,
                      height: .7,
                      color: Colors.grey[700],
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                    SizedBox(width: 10),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

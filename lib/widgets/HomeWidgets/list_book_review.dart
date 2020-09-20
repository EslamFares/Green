import 'package:flutter/material.dart';

import '../../Data/data.dart';

Widget listBookReview(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 220,
    padding: EdgeInsets.symmetric(vertical: 5),
    margin: EdgeInsets.only(right: 5, left: 5),
    decoration: BoxDecoration(
        color: Colors.green[800], // Colors.red
        borderRadius: BorderRadius.circular(10.0)),
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            // margin: EdgeInsets.only(left: 10),
            width: MediaQuery.of(context).size.width,
            height: 200,
            // color: Colors.amberAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 150,
                  width: (MediaQuery.of(context).size.width - 10) * 0.7,
                  // color: Colors.red,
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Container(
                        width:
                        ((MediaQuery.of(context).size.width - 10) * 0.7) /
                            2,
                        height: 140,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                      ),
                      Positioned(
                        left:
                        ((MediaQuery.of(context).size.width - 10) * 0.7) /
                            7 -
                            50,
                        right:
                        ((MediaQuery.of(context).size.width - 10) * 0.7) /
                            7 -
                            50,
                        child: Icon(
                          DataSource.iconDepart[index],
                          color: Colors.black,
                          size: 120,
                        ),
                      ),
                      Positioned(
                          right: 10,
                          bottom: 0,
                          child: Text(
                            'مراجعة كتاب',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  height: 35,
                  width: (MediaQuery.of(context).size.width - 10) * 0.7,
                  child: Center(
                      child: Text(
                        'كيف تتحدث فيصغى الصغار',
                        style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                      )),
                ),
                SizedBox(height: 5),
              ],
            ),
          );
        }),
  );
}
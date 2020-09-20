import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget monthLists(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 300,
    padding: EdgeInsets.symmetric(vertical: 5),
    margin: EdgeInsets.only(right: 5),
    // color: Colors.red,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            // color: Colors.amber,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width / 1.6,
                  height: 290,
                  decoration: BoxDecoration(
                      color: Color(0xff1E7145),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff1E7145).withOpacity(.7),
                            ),
                            height: 240,
                            child: Stack(
                              alignment: Alignment.center,
                              fit: StackFit.expand,
                              children: <Widget>[
                                Center(
                                    child: FlutterLogo(
                                  size: 350.0,
                                )),
                                Container(
                                  height: 240,
                                  color: Colors.green[900].withOpacity(.4),
                                ),
                                Center(
                                    child: Container(
                                  width: (MediaQuery.of(context).size.width /
                                          1.6) /
                                      1.1,
                                  height: 120,
                                  // color: Colors.amber,
                                  child: Center(
                                    child: Text(
                                      'مجد التاجر في كيسة ومجد العالم في كتبة',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ))
                              ],
                            )),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            width: MediaQuery.of(context).size.width / 1.6,
                            color: Color(0xff1E7145),
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'كتب مايو المفتوحة',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 14),
                                ),
                                Container(
                                  height: 35,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.green),
                                  child: Center(
                                      child: Text(
                                    '6',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 16),
                                  )),
                                )
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
  );
}

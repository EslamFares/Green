import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget monthLists(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 250,
    padding: EdgeInsets.symmetric(vertical: 5),
    margin: EdgeInsets.only(right: 5),
    // color: Colors.red,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(left: 10),
            width: MediaQuery.of(context).size.width / 1.9,
            height: 250,
            decoration: BoxDecoration(
                color: Color(0xff1E7145),
                borderRadius: BorderRadius.circular(20.0)),
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff1E7145).withOpacity(.7),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      height: 210,
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
                            decoration: BoxDecoration(
                                color: Color(0xff1E7145).withOpacity(.4),
                                borderRadius: BorderRadius.circular(20.0)),
                          ),
                          Center(
                              child: Container(
                            width:
                                (MediaQuery.of(context).size.width / 1.9) / 1.1,
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
                      width: MediaQuery.of(context).size.width / 1.9,
                      decoration: BoxDecoration(
                          color: Colors.black26, //Color(0xff1E7145),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0))),
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'كتب مايو المفتوحة',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 14),
                          ),
                          Center(
                              child: Text(
                            '6',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 16),
                          ))
                        ],
                      )),
                ),
              ],
            ),
          );
        }),
  );
}

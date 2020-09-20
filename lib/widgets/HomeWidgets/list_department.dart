import 'package:flutter/material.dart';
import '../../Data/data.dart';
Widget listDepartment(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 200,
    padding: EdgeInsets.symmetric(vertical: 5),
    margin: EdgeInsets.only(right: 5),
    // color: Colors.red,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) {
          return Container(
            // color: Colors.amber,
            height: 195,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width / 2.5,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.green[800],
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Center(
                    child: Icon(
                      DataSource.iconDepart[index],
                      color: Colors.white,
                      size: 70,
                    ),
                  ),
                ),
                Container(
                  // color: Colors.blue,
                  margin: EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width / 2.5,
                  height: 30,
                  child: Center(
                      child: Text(
                        "${DataSource.namesDepart[index]}",
                        style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                      )),
                )
              ],
            ),
          );
        }),
  );
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Data/data.dart';

Widget booksType(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 370,
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
                  width: MediaQuery.of(context).size.width / 2.1,
                  height: 230,
                  decoration: BoxDecoration(
                      color: Colors.green[800],
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                            decoration: BoxDecoration(
                                // color: Colors.amber,
                                borderRadius: BorderRadius.circular(10.0)),
                            height: 230,
                            child: FlutterLogo()),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                            padding: EdgeInsets.only(right: 8),
                            width: MediaQuery.of(context).size.width / 2.1,
                            color: Colors.black26,
                            height: 30,
                            child: Text(
                              '${DataSource.booksInfo[index]['writer']}',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13),
                            )),
                      ),
                    ],
                  ),
                ),
                Container(
                  // color: Colors.deepPurple,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width / 2.1,
                  height: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.lock,
                            color: Colors.black,
                            size: 18,
                          ),
                          SizedBox(width: 5),
                          Text(
                            '${DataSource.booksInfo[index]['name'].toString().length <= 20 ? DataSource.booksInfo[index]['name'] : DataSource.booksInfo[index]['name'].toString().substring(0, 18) + '...'}',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w900),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Wrap(
                        children: <Widget>[
                          Text(
                            '${DataSource.booksInfo[index]['content'].toString().substring(0, 55)}...',
                            style: TextStyle(
                                fontSize: 11,
                                height: 1.5,
                                fontWeight: FontWeight.w700,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        }),
  );
}

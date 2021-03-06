import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green/pages/HomePages/read_book.dart';
import '../../Data/data.dart';

Widget booksType(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 275,
    padding: EdgeInsets.symmetric(vertical: 2),
    margin: EdgeInsets.only(right: 5, bottom: 10),
    // color: Colors.red,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ReadbookPage()));
            },
            child: Container(
              // color: Colors.amber,
              margin: EdgeInsets.only(left: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: MediaQuery.of(context).size.width / 2.1,
                    height: 190,
                    decoration: BoxDecoration(
                        color: Color(0xff1E7145),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          bottom: 25,
                          child: Container(
                            decoration: BoxDecoration(
                                // color: Colors.amber,
                                borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        DataSource.booksInfo[Random().nextInt(DataSource.booksInfo.length)]['imgurl']),
                                    fit: BoxFit.contain),
                                    ),
                            height: 185,
                            // child: FlutterLogo(),
                          ),
                        ),
                        Positioned(
                          bottom: 1,
                          right: 0,
                          child: Container(
                              padding: EdgeInsets.only(right: 8),
                              width: MediaQuery.of(context).size.width / 2.1,
                              decoration: BoxDecoration(
                                  color: Colors.black26,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10))),
                              height: 30,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                     '${DataSource.booksInfo[index]['writer'].toString().length <= 18 ? DataSource.booksInfo[index]['writer'] : "${DataSource.booksInfo[index]['writer'].toString().substring(0, 16)}.."}',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13),
                                  ),
                                ],
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
                    height: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(width: 5),
                        Text(
                          '${DataSource.booksInfo[index]['name'].toString().length <= 20 ? DataSource.booksInfo[index]['name'] : DataSource.booksInfo[index]['name'].toString().substring(0, 18) + '...'}',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 5,
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
            ),
          );
        }),
  );
}

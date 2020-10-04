import 'package:flutter/material.dart';
import 'package:green/Data/data.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class BooksInSegl extends StatelessWidget {
  const BooksInSegl({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 340,
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
                    margin: EdgeInsets.only(left: 15),
                    width: MediaQuery.of(context).size.width / 1.8,
                    height: 255,
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
                          top: 7,
                          left: 10,
                          child: Icon(
                            Icons.save_alt,
                            size: 35,
                            color: Colors.white,
                          ),
                        ),
                        Positioned(
                          top: 7,
                          right: 10,
                          child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: Icon(
                                Icons.turned_in_not,
                                size: 30,
                                color: Colors.green,
                              )),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                              padding: EdgeInsets.only(right: 8),
                              width: MediaQuery.of(context).size.width / 1.8,
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
                    width: MediaQuery.of(context).size.width / 1.8,
                    height: 75,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Text(
                            '${DataSource.booksInfo[index]['name'].toString().length <= 20 ? DataSource.booksInfo[index]['name'] : DataSource.booksInfo[index]['name'].toString().substring(0, 18) + '...'}',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w900),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        //==========
                        LinearPercentIndicator(
                          isRTL: true,
                          width: MediaQuery.of(context).size.width / 1.8 - 45,
                          animation: true,
                          lineHeight: 8.0,
                          animationDuration: 1000,
                          percent: 0.1,
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          progressColor: Colors.green[800],
                          trailing: Text(
                            '10 %',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}

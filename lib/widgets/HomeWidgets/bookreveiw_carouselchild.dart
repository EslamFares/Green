
  import 'package:flutter/material.dart';
import 'package:green/Data/data.dart';

Widget bookReveiwCarouselChild(BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.only(left: 5, right: 5, bottom: 20),
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.green[900], borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 130,
            width: (MediaQuery.of(context).size.width - 10) * 0.7,
            // color: Colors.red,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  width: ((MediaQuery.of(context).size.width - 10) * 0.7) / 2,
                  height: 110,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                ),
                Positioned(
                  left:
                      ((MediaQuery.of(context).size.width - 10) * 0.7) / 7 - 50,
                  right:
                      ((MediaQuery.of(context).size.width - 10) * 0.7) / 7 - 50,
                  child: Icon(
                    DataSource.iconDepart[index],
                    color: Colors.black,
                    size: 120,
                  ),
                ),
                Positioned(
                    right: 15,
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
            height: 30,
            width: ((MediaQuery.of(context).size.width - 10) * 0.7) - 20,
            child: Center(
                child: Text(
              'كيف تتحدث فيصغى الصغار',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 14),
            )),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
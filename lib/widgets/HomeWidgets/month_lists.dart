import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green/Data/data.dart';

Widget monthLists(BuildContext context) {
  

  return Container(
    width: MediaQuery.of(context).size.width,
    height: 220,
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
            height: 210,
            decoration: BoxDecoration(
                color: Color(0xff1E7145),
                borderRadius: BorderRadius.circular(20.0)),
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                        // color: Colors.amber,//0xff1E7145).withOpacity(.7),
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            image: NetworkImage(DataSource.imageMonthe[index]),
                            fit: BoxFit.cover)),
                    height: 210,
                    // child: Stack(
                    //   alignment: Alignment.center,
                    //   fit: StackFit.expand,
                    //   children: <Widget>[
                    //     Center(
                    //         child: FlutterLogo(
                    //       size: 350.0,
                    //     )),
                    //     Container(
                    //       height: 240,
                    //       decoration: BoxDecoration(
                    //           color: Color(0xff1E7145).withOpacity(.4),
                    //           borderRadius: BorderRadius.circular(20.0)),
                    //     ),
                    //     Center(
                    //         child: Container(
                    //       width:
                    //           (MediaQuery.of(context).size.width / 1.9) / 1.1,
                    //       height: 120,
                    //       // color: Colors.amber,
                    //       child: Center(
                    //         child: Text(
                    //           'مجد التاجر في كيسة ومجد العالم في كتبة',
                    //           textAlign: TextAlign.center,
                    //           style: TextStyle(
                    //               color: Colors.white,
                    //               fontSize: 18,
                    //               fontWeight: FontWeight.bold),
                    //         ),
                    //       ),
                    //     ))
                    //   ],
                    // ),
                  ),
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
                            'كتب ${ monthName(index + 1)} المفتوحة',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 14),
                          ),
                          Center(
                              child: Text(
                            '${index + 1}',
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
String monthName(int index) {
    String month = 'مايو';
    switch (index) {
      case 1:
        month = 'يناير';
        break;
      case 2:
        month = 'فبراير';
        break;
      case 3:
        month = 'مارس';
        break;
      case 4:
        month = 'إبريل';
        break;
      case 5:
        month = 'مايو';
        break;
      case 6:
        month = 'يونيو';
        break;
      case 7:
        month = 'يوليو';
        break;
      case 8:
        month = 'أغسطس';
        break;
      case 9:
        month = 'سبتمبر';
        break;
      case 10:
        month = 'أكتوبر';
        break;
      case 11:
        month = 'نوفمبر';
        break;
      case 12:
        month = 'ديسمبر';
        break;
      default:
        month = 'مايو';
        break;
    }
    return month;
  }
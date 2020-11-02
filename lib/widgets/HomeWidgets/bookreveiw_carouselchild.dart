import 'package:flutter/material.dart';
import 'package:green/Data/data.dart';
import 'package:green/pages/HomePages/show_book.dart';

Widget bookReveiwCarouselChild(BuildContext context, int index) {
  return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ShowBook()));
      },
      child: Container(
        margin: EdgeInsets.only(left: 5, right: 5, bottom: 20),
        width: MediaQuery.of(context).size.width,
        height: 170,
        decoration: BoxDecoration(
          color:   Color(0xff1E7145),
          image: DecorationImage(
              image: NetworkImage(DataSource.bookReviewsicon[index]),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(15.0),
        ),
        // child:
        //  Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: <Widget>[
        //     Container(
        //       height: 130,
        //       width: (MediaQuery.of(context).size.width - 10) * 0.7,
        //       // color: Colors.amber,
        //       child: Stack(
        //         alignment: Alignment.center,
        //         children: <Widget>[
        //           Container(
        //             width: ((MediaQuery.of(context).size.width - 10) * 0.7) / 2,
        //             height: 110,
        //             decoration: BoxDecoration(
        //                 color: Colors.white, shape: BoxShape.circle),
        //           ),
        //           Positioned(
        //             left: 70,
        //             right: 70,
        //             child: Container(
        //               width: 80,
        //               height: 80,
        //               decoration: BoxDecoration(
        //                 color: Colors.red,
        //                // image: DecorationImage(
        //                 //  image: NetworkImage('https://i.ibb.co/56zfD7H/a5dr-com-130-1601243055.jpg'),
        //               //  ),
        //               ),
        //               // child: Icon(
        //               //   DataSource.iconDepart[index],
        //               //   color: Colors.black,
        //               //   size: 120,
        //               // ),
        //             ),
        //           ),
        //           Positioned(
        //               right: 15,
        //               bottom: 0,
        //               child: Text(
        //                 'مراجعة كتاب',
        //                 style: TextStyle(
        //                     fontSize: 12,
        //                     fontWeight: FontWeight.w600,
        //                     color: Colors.white),
        //               )),
        //         ],
        //       ),
        //     ),
        //     Container(
        //       color: Colors.white,
        //       height: 30,
        //       width: ((MediaQuery.of(context).size.width - 10) * 0.7) - 20,
        //       child: Center(
        //           child: Text(
        //         DataSource.titleBookreviwe[index],
        //         style: TextStyle(fontWeight: FontWeight.w800, fontSize: 14),
        //       )),
        //     ),
        //     SizedBox(height: 10),
        //   ],
        // ),
      ));
}

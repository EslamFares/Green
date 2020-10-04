
import 'package:flutter/material.dart';
import 'package:green/Data/data.dart';

class BookIdeaInSegl extends StatelessWidget {
  const BookIdeaInSegl({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 180,
      padding: EdgeInsets.symmetric(vertical: 5),
      margin: EdgeInsets.only(right: 5, left: 5),
      decoration: BoxDecoration(
          // color: Colors.green[800], // Colors.red
          borderRadius: BorderRadius.circular(10.0)),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(left: 15),
              width: MediaQuery.of(context).size.width - 90,
              height: 180,
              decoration: BoxDecoration(
                  color: Colors.green[800], // Colors.red
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 120,
                    width: (MediaQuery.of(context).size.width - 10) * 0.6,
                    // color: Colors.red,
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Container(
                          width:
                              ((MediaQuery.of(context).size.width - 10) * 0.7) /
                                  2,
                          height: 85,
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
                            size: 85,
                          ),
                        ),
                        Positioned(
                            right: 15,
                            bottom: 0,
                            child: Text(
                              'مراجعة كتاب',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: 30,
                    width: (MediaQuery.of(context).size.width - 10) * 0.6,
                    child: Center(
                        child: Text(
                      'كيف تتحدث فيصغى الصغار',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    )),
                  ),
                  SizedBox(height: 15),
                ],
              ),
            );
          }),
    );
  }
}

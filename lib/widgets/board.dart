import 'package:flutter/material.dart';
import 'package:green/widgets/SettingWidgets/fullboard.dart';

import 'SettingWidgets/accountWidgets/name_in_borad.dart';

class Board extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.all(8),
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(8.0))),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'عالميًا',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              'العشرون الأوائل',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                
                    nameInBord(context, 4185, 'Eslam Fares',1),
                    Divider(
                      height: 1,
                      color: Colors.grey,
                    ),
                    nameInBord(context, 4185, 'Afnan',8),
                    Divider(
                      height: 1,
                      color: Colors.grey,
                    ),
                    nameInBord(context, 4185, 'Ahmed',10),
                    Divider(
                      height: 1,
                      color: Colors.grey,
                    ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Fullboard('عالميًا')));
                    },
                    child: Container(
                      padding: EdgeInsets.only(bottom: 10),
                      alignment: Alignment.center,
                      child: Text(
                        'عرض الكل',
                        style:
                            TextStyle(color: Colors.green[800], fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.all(8),
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(8.0))),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'محليًا',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              'العشرون الأوائل',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  nameInBord(context, 1, 'Abo Nwaf',8),
                    Divider(
                      height: 1,
                      color: Colors.grey,
                    ),
                    nameInBord(context, 2, 'fhd',4),
                    Divider(
                      height: 1,
                      color: Colors.grey,
                    ),
                    nameInBord(context, 3, 'Skhr',7),
                    Divider(
                      height: 1,
                      color: Colors.grey,
                    ),
                    nameInBord(context, 4, 'hassan',9),
                    Divider(
                      height: 1,
                      color: Colors.grey,
                    ),
                 InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Fullboard( 'محليًا')));
                    },
                    child: Container(
                      padding: EdgeInsets.only(bottom: 10),
                      alignment: Alignment.center,
                      child: Text(
                        'عرض الكل',
                        style:
                            TextStyle(color: Colors.green[800], fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

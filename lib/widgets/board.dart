import 'package:flutter/material.dart';
import 'package:green/widgets/SettingWidgets/fullboard.dart';

class Board extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Directionality(
            textDirection: TextDirection.rtl,
            child: Scaffold(
              body: ListView(children: [
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
                                  border:
                                      Border.all(color: Colors.grey, width: 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0))),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '1',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.width / 10,
                                    width:
                                        MediaQuery.of(context).size.width / 10,
                                    decoration: BoxDecoration(
                                        color: Colors.green[800],
                                        border: Border.all(
                                            color: Colors.green[800]),
                                        shape: BoxShape.circle),
                                  ),
                                ),
                                Expanded(flex: 5, child: Text('moneer')),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.width / 10,
                                    width:
                                        MediaQuery.of(context).size.width / 8,
                                    decoration: BoxDecoration(
                                        color: Colors.green[800],
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0))),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Divider(
                            height: 1,
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '2',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.width / 10,
                                    width:
                                        MediaQuery.of(context).size.width / 10,
                                    decoration: BoxDecoration(
                                        color: Colors.green[800],
                                        border: Border.all(
                                            color: Colors.green[800]),
                                        shape: BoxShape.circle),
                                  ),
                                ),
                                Expanded(flex: 5, child: Text('moneer')),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.width / 10,
                                    width:
                                        MediaQuery.of(context).size.width / 8,
                                    decoration: BoxDecoration(
                                        color: Colors.green[800],
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0))),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Divider(
                            height: 1,
                            color: Colors.grey,
                          ),
                          Divider(
                            height: 1,
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '3',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.width / 10,
                                    width:
                                        MediaQuery.of(context).size.width / 10,
                                    decoration: BoxDecoration(
                                        color: Colors.green[800],
                                        border: Border.all(
                                            color: Colors.green[800]),
                                        shape: BoxShape.circle),
                                  ),
                                ),
                                Expanded(flex: 5, child: Text('Moneer')),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.width / 10,
                                    width:
                                        MediaQuery.of(context).size.width / 8,
                                    decoration: BoxDecoration(
                                        color: Colors.green[800],
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0))),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Divider(
                            height: 1,
                            color: Colors.grey,
                            thickness: 1,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Fullboard()));
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              alignment: Alignment.center,
                              child: Text(
                                'عرض الكل',
                                style: TextStyle(
                                    color: Colors.green[800], fontSize: 23),
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
                                  border:
                                      Border.all(color: Colors.grey, width: 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0))),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '1',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.width / 10,
                                    width:
                                        MediaQuery.of(context).size.width / 10,
                                    decoration: BoxDecoration(
                                        color: Colors.green[800],
                                        border: Border.all(
                                            color: Colors.green[800]),
                                        shape: BoxShape.circle),
                                  ),
                                ),
                                Expanded(flex: 5, child: Text('moneer')),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.width / 10,
                                    width:
                                        MediaQuery.of(context).size.width / 8,
                                    decoration: BoxDecoration(
                                        color: Colors.green[800],
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0))),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Divider(
                            height: 1,
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '2',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.width / 10,
                                    width:
                                        MediaQuery.of(context).size.width / 10,
                                    decoration: BoxDecoration(
                                        color: Colors.green[800],
                                        border: Border.all(
                                            color: Colors.green[800]),
                                        shape: BoxShape.circle),
                                  ),
                                ),
                                Expanded(flex: 5, child: Text('moneer')),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.width / 10,
                                    width:
                                        MediaQuery.of(context).size.width / 8,
                                    decoration: BoxDecoration(
                                        color: Colors.green[800],
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0))),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Divider(
                            height: 1,
                            color: Colors.grey,
                          ),
                          Divider(
                            height: 1,
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '3',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.width / 10,
                                    width:
                                        MediaQuery.of(context).size.width / 10,
                                    decoration: BoxDecoration(
                                        color: Colors.green[800],
                                        border: Border.all(
                                            color: Colors.green[800]),
                                        shape: BoxShape.circle),
                                  ),
                                ),
                                Expanded(flex: 5, child: Text('Moneer')),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.width / 10,
                                    width:
                                        MediaQuery.of(context).size.width / 8,
                                    decoration: BoxDecoration(
                                        color: Colors.green[800],
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0))),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Divider(
                            height: 1,
                            color: Colors.grey,
                            thickness: 1,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Fullboard()));
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              alignment: Alignment.center,
                              child: Text(
                                'عرض الكل',
                                style: TextStyle(
                                    color: Colors.green[800], fontSize: 23),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            )));
  }
}
